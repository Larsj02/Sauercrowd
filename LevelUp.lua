Sauercrowd.LevelUps = {}

local playerName = UnitName("player")
local seenLevelSixty = {} -- Track level 60 messages we've already processed

-- Parse guild chat level 60 messages
-- Format: "Name (TwitchHandle) hat heldenhaft Level 60 erreicht!"
-- Format without handle: "Name hat heldenhaft Level 60 erreicht!"
local function parseGuildLevelSixtyMessage(message)
	local name, twitchHandle

	-- Try format with TwitchHandle first: Name (TwitchHandle) hat heldenhaft Level 60 erreicht!
	name, twitchHandle = message:match("^(.+) %((.+)%) hat heldenhaft Level 60 erreicht!$")

	-- Try format without TwitchHandle: Name hat heldenhaft Level 60 erreicht!
	if not name then
		name = message:match("^(.+) hat heldenhaft Level 60 erreicht!$")
		twitchHandle = nil
	end

	if not name then return nil end

	return {
		name = name,
		twitchHandle = twitchHandle,
	}
end

-- Process level 60 achievement
local function processLevelSixty(data)
	-- Create unique ID to prevent duplicates
	local levelSixtyID = data.name .. "-60-" .. time()
	if seenLevelSixty[levelSixtyID] then
		return
	end
	seenLevelSixty[levelSixtyID] = true

	-- Show level 60 announcement
	local messageString
	if data.twitchHandle and data.twitchHandle ~= "" then
		messageString = string.format("%s (%s) hat heldenhaft Level 60 erreicht!",
			data.name, data.twitchHandle)
	else
		messageString = string.format("%s hat heldenhaft Level 60 erreicht!", data.name)
	end
	Sauercrowd.LevelSixtyAnnouncement:ShowLevelSixtyMessage(messageString)
end

-- Event handler for guild messages
local levelUpFrame = CreateFrame("Frame")
levelUpFrame:RegisterEvent("CHAT_MSG_GUILD")

levelUpFrame:SetScript("OnEvent", function(self, event, ...)
	if event == "CHAT_MSG_GUILD" then
		local message, sender = ...

		-- Parse level 60 message from guild chat
		local levelData = parseGuildLevelSixtyMessage(message)
		if levelData then
			-- Only process if it's not our own level 60 (already processed)
			if levelData.name ~= playerName then
				processLevelSixty(levelData)
			end
		end
	end
end)

function Sauercrowd.LevelUps:Initialize()
	Sauercrowd.EventManager:RegisterHandler("PLAYER_LEVEL_UP",
		function(_, level)
			for _, milestone in pairs(Sauercrowd.Constants.LEVEL_MILESTONES) do
				if level == milestone then
					local player = UnitName("player")

					-- Special handling for Level 60
					if level == 60 then
						-- Get own TwitchHandle from saved data
						local twitchHandle = ""
						if SauercrowdTwitchHandles and SauercrowdTwitchHandles.handle then
							twitchHandle = SauercrowdTwitchHandles.handle
						end

						-- Send guild message with format for parsing
						local guildMessageString
						if twitchHandle and twitchHandle ~= "" then
							guildMessageString = string.format("%s (%s) hat heldenhaft Level 60 erreicht!",
								player, twitchHandle)
						else
							guildMessageString = string.format("%s hat heldenhaft Level 60 erreicht!", player)
						end
						C_ChatInfo.SendChatMessage(guildMessageString, "GUILD")

						-- Process own level 60 achievement
						processLevelSixty({
							name = player,
							twitchHandle = twitchHandle
						})
					else
						-- Regular milestone message
						local message = player .. " hat Level " .. level .. " erreicht!"
						C_ChatInfo.SendChatMessage(message, "GUILD")
					end
					break
				end
			end
		end, 50, "LevelMilestoneAnnouncer")
end
