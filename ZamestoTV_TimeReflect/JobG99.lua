local addonName, addonTable = ...
local f = CreateFrame("Frame")

-- Full quest data with descriptions
local questData = {
    { id = 86923, name = "Go Fish", desc = "Fish from Steamwheedle runoff pools 50 times.", enabled = false },
    { id = 86920, name = "War Mode Violence", desc = "Kill 5 enemy players within Undermine in war mode.", enabled = false },
    { id = 86924, name = "Gotta Catch at Least a Few", desc = "Catch 5 battle pets in Undermine.", enabled = false },
    { id = 87304, name = "Time to Vacate", desc = "Complete the Excavation Site 9 delve.", enabled = false },
    { id = 87303, name = "Clean the Sidestreets", desc = "|cFFFF0000Complete the Sidestreet Sluice Delve.|r", enabled = true },
    { id = 86917, name = "Ship Right", desc = "|cFFFF0000Complete 10 shipping and handling jobs.|r", enabled = true },
    { id = 87302, name = "Rare Rivals", desc = "|cFFFFFF00Kill 3 rares in Undermine.|r", enabled = true },
    { id = 86918, name = "Reclaimed Scrap", desc = "|cFF00FF00Earn 100 Kaja'Cola cans from scrap piles.|r", enabled = true },
    { id = 86919, name = "Side Gig", desc = "|cFFFFFF00Complete a side gig for your cartel.|r", enabled = true },
    { id = 87305, name = "Desire to D.R.I.V.E.", desc = "|cFFFFFF00Complete 2 races in Undermine.|r", enabled = true },
    { id = 87306, name = "Kaja Cruising", desc = "|cFF00FF00Collect 50 Kaja turbo cans.|r (Inner Circle of Demolition Dome)", enabled = true },
    { id = 87307, name = "Garbage Day", desc = "|cFF00FF00Loot 25 dumpsters.|r (Quickly tap the Shiny Trash Can 25 times)", enabled = true },
    { id = 86915, name = "Side with Cartel", desc = "Select your cartel for the week.", enabled = false }
}

local function FlashIcon()
    FlashClientIcon()
    PlaySound(130697, "Master")
end

local function IsQuestActive(id)
    return C_QuestLog.IsOnQuest(id)
end

local function IsQuestComplete(id)
    return C_QuestLog.ReadyForTurnIn(id) or C_QuestLog.IsQuestFlaggedCompleted(id)
end

local function GetCompletedCount()
    local count = 0
    for _, data in ipairs(questData) do
        if C_QuestLog.IsQuestFlaggedCompleted(data.id) then
            count = count + 1
        end
    end
    return count
end

local function HasChettList()
    return C_Item.GetItemCount(235053) > 0
end

local function ShouldDisplayQuest(data)
    return data.enabled and IsQuestActive(data.id) and not IsQuestComplete(data.id) and HasChettList()
end

local displays = {}

-- Create anchor frame for movement
local anchor = CreateFrame("Frame", "QuestTrackerAnchor", UIParent, "BackdropTemplate")
anchor:SetSize(200, 20)
anchor:SetPoint("TOP", UIParent, "TOP", 0, -50)
anchor:SetBackdrop({ bgFile = "Interface/Tooltips/UI-Tooltip-Background" })
anchor:SetBackdropColor(0, 0, 0, 0.3)
anchor:EnableMouse(true)
anchor:SetMovable(true)
anchor:RegisterForDrag("LeftButton")
anchor:SetScript("OnDragStart", anchor.StartMoving)
anchor:SetScript("OnDragStop", anchor.StopMovingOrSizing)

anchor.text = anchor:CreateFontString(nil, "OVERLAY", "GameFontNormal")
anchor.text:SetText("C.H.E.T.T. List")
anchor.text:SetPoint("CENTER")

local function CreateTextDisplay(title, desc)
    local frame = CreateFrame("Frame", nil, UIParent)
    frame:SetSize(300, 40)

    local titleFont = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    titleFont:SetPoint("TOP", frame, "TOP", 0, 0)
    titleFont:SetJustifyH("CENTER")
    titleFont:SetTextColor(1, 0.82, 0, 1)
    titleFont:SetText(title)

    local descFont = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    descFont:SetPoint("TOP", titleFont, "BOTTOM", 0, -2)
    descFont:SetJustifyH("CENTER")
    descFont:SetTextColor(1, 1, 1, 1)
    descFont:SetText(desc)

    frame:Hide()
    return frame
end

local function UpdateDisplays()
    -- Hide all displays and clear points
    for _, display in pairs(displays) do
        display:Hide()
        display:ClearAllPoints()
    end

    -- If no C.H.E.T.T. List, hide anchor and return
    if not HasChettList() then
        anchor:Hide()
        return
    end

    local lastFrame = anchor
    local anyShown = false

    -- Collect eligible quests
    local eligibleQuests = {}
    for _, data in ipairs(questData) do
        if ShouldDisplayQuest(data) then
            table.insert(eligibleQuests, data)
        end
    end

    -- Create and position displays for eligible quests
    for _, data in ipairs(eligibleQuests) do
        if not displays[data.id] then
            displays[data.id] = CreateTextDisplay(data.name, data.desc)
        end
        displays[data.id]:SetPoint("TOP", lastFrame, "BOTTOM", 0, -4)
        displays[data.id]:Show()
        lastFrame = displays[data.id]
        anyShown = true
    end

    -- Hide displays for ineligible quests
    for _, data in ipairs(questData) do
        if displays[data.id] and not ShouldDisplayQuest(data) then
            displays[data.id]:Hide()
            displays[data.id]:ClearAllPoints()
        end
    end

    -- Show or hide anchor based on displayed quests
    if anyShown then
        anchor:Show()
    else
        anchor:Hide()
    end
end

local function InitializeTracker()
    -- Clear all displays to prevent overlap
    for _, display in pairs(displays) do
        display:Hide()
        display:ClearAllPoints()
    end
    displays = {}
    -- Force an immediate update
    UpdateDisplays()
end

f:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_ENTERING_WORLD" then
        -- Use a short delay to ensure UI is fully loaded
        C_Timer.After(0.1, function()
            InitializeTracker()
        end)
    elseif event == "QUEST_LOG_UPDATE" or event == "QUEST_WATCH_UPDATE" or event == "QUEST_ACCEPTED" or event == "UNIT_QUEST_LOG_CHANGED" or event == "QUEST_TURNED_IN" then
        UpdateDisplays()
    elseif event == "BAG_UPDATE" then
        UpdateDisplays()
    end
end)

f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("QUEST_LOG_UPDATE")
f:RegisterEvent("QUEST_WATCH_UPDATE")
f:RegisterEvent("QUEST_ACCEPTED")
f:RegisterEvent("UNIT_QUEST_LOG_CHANGED")
f:RegisterEvent("QUEST_TURNED_IN")
f:RegisterEvent("BAG_UPDATE")