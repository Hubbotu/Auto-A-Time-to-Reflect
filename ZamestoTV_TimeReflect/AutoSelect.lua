local addonName, addon = ...

-- Define the default NPC_LIST table
local defaultNPC_LIST = {
    ["Historian Ju'pa"] = {
        46192, 46206, 111342, 46155, 46237, 111330, 46139, 46219, 46130, 42032,
        46168, 111278, 45705, 111355, 46194, 46175, 46202, 111346, 111311,
        111302, 46225, 111320, 42156, 41532, 42026, 46148, 111295, 42091,
        111287, 42192, 111314, 46146, 46134, 41523, 111300, 41546, 111290,
        46108, 41544, 46063, 46004, 111323, 46019, 111327, 46031, 42185,
        42157, 42162, 41686, 111284, 46069
    },
    ["Historian Llore"] = {41523, 41528, 41532, 41536, 41539, 41544, 41546, 41660, 41674, 41676, 41683, 41686, 41706, 41711, 41716, 42020, 42025, 42026, 42032, 42086, 42088, 42091, 42098, 42099, 42156, 42157, 42162, 42166, 42169, 42176, 42179, 42184, 42185, 42192, 42210, 42214, 42220, 45687, 45695, 45699, 45705, 46001, 46004, 46010, 46017, 46019, 46026, 46031, 46036, 46063, 46069, 46073, 46080, 46085, 46088, 46094, 46101, 46106, 46108, 46130, 46134, 46139, 46146, 46148, 46155, 46159, 46166, 46168, 46175, 46185, 46192, 46194, 46202, 46206, 46212, 46214, 46219, 46225, 46229, 46237, 111284, 111336, 45705, 111330, 111308, 46139, 42179, 111355, 46237, 111290, 46175, 111327, 111323, 42088, 46130, 111343, 41546, 46004, 46088, 46185, 45695, 111295, 111311, 46202, 41711, 46134, 41539, 111351, 42086, 111340, 111302, 46212, 111346, 46166, 45687, 46148, 42156, 41536, 111278, 46194, 42026, 111287, 42032, 111300, 41706, 46069, 42162}, -- selects option 1, then 3
    -- Russian localized names
["Историк Ю'па"] = {
        46192, 46206, 111342, 46155, 46237, 111330, 46139, 46219, 46130, 42032,
        46168, 111278, 45705, 111355, 46194, 46175, 46202, 111346, 111311,
        111302, 46225, 111320, 42156, 41532, 42026, 46148, 111295, 42091,
        111287, 42192, 111314, 46146, 46134, 41523, 111300, 41546, 111290,
        46108, 41544, 46063, 46004, 111323, 46019, 111327, 46031, 42185,
        42157, 42162, 41686, 111284, 46069
    },
    ["Историк Ллор"] = {41523, 41528, 41532, 41536, 41539, 41544, 41546, 41660, 41674, 41676, 41683, 41686, 41706, 41711, 41716, 42020, 42025, 42026, 42032, 42086, 42088, 42091, 42098, 42099, 42156, 42157, 42162, 42166, 42169, 42176, 42179, 42184, 42185, 42192, 42210, 42214, 42220, 45687, 45695, 45699, 45705, 46001, 46004, 46010, 46017, 46019, 46026, 46031, 46036, 46063, 46069, 46073, 46080, 46085, 46088, 46094, 46101, 46106, 46108, 46130, 46134, 46139, 46146, 46148, 46155, 46159, 46166, 46168, 46175, 46185, 46192, 46194, 46202, 46206, 46212, 46214, 46219, 46225, 46229, 46237, 111284, 111336, 45705, 111330, 111308, 46139, 42179, 111355, 46237, 111290, 46175, 111327, 111323, 42088, 46130, 111343, 41546, 46004, 46088, 46185, 45695, 111295, 111311, 46202, 41711, 46134, 41539, 111351, 42086, 111340, 111302, 46212, 111346, 46166, 45687, 46148, 42156, 41536, 111278, 46194, 42026, 111287, 42032, 111300, 41706, 46069, 42162}, -- selects option 1, then 3
    -- German localized names
    ["Historiker Ju'pa"] = {
        46192, 46206, 111342, 46155, 46237, 111330, 46139, 46219, 46130, 42032,
        46168, 111278, 45705, 111355, 46194, 46175, 46202, 111346, 111311,
        111302, 46225, 111320, 42156, 41532, 42026, 46148, 111295, 42091,
        111287, 42192, 111314, 46146, 46134, 41523, 111300, 41546, 111290,
        46108, 41544, 46063, 46004, 111323, 46019, 111327, 46031, 42185,
        42157, 42162, 41686, 111284, 46069
    },
    ["Historiker Llore"] = {41523, 41528, 41532, 41536, 41539, 41544, 41546, 41660, 41674, 41676, 41683, 41686, 41706, 41711, 41716, 42020, 42025, 42026, 42032, 42086, 42088, 42091, 42098, 42099, 42156, 42157, 42162, 42166, 42169, 42176, 42179, 42184, 42185, 42192, 42210, 42214, 42220, 45687, 45695, 45699, 45705, 46001, 46004, 46010, 46017, 46019, 46026, 46031, 46036, 46063, 46069, 46073, 46080, 46085, 46088, 46094, 46101, 46106, 46108, 46130, 46134, 46139, 46146, 46148, 46155, 46159, 46166, 46168, 46175, 46185, 46192, 46194, 46202, 46206, 46212, 46214, 46219, 46225, 46229, 46237, 111284, 111336, 45705, 111330, 111308, 46139, 42179, 111355, 46237, 111290, 46175, 111327, 111323, 42088, 46130, 111343, 41546, 46004, 46088, 46185, 45695, 111295, 111311, 46202, 41711, 46134, 41539, 111351, 42086, 111340, 111302, 46212, 111346, 46166, 45687, 46148, 42156, 41536, 111278, 46194, 42026, 111287, 42032, 111300, 41706, 46069, 42162}, -- selects option 1, then 3
    -- French localized names
    ["Historien Ju’pa"] = {
        46192, 46206, 111342, 46155, 46237, 111330, 46139, 46219, 46130, 42032,
        46168, 111278, 45705, 111355, 46194, 46175, 46202, 111346, 111311,
        111302, 46225, 111320, 42156, 41532, 42026, 46148, 111295, 42091,
        111287, 42192, 111314, 46146, 46134, 41523, 111300, 41546, 111290,
        46108, 41544, 46063, 46004, 111323, 46019, 111327, 46031, 42185,
        42157, 42162, 41686, 111284, 46069
    },
    ["Historien Llore"] = {41523, 41528, 41532, 41536, 41539, 41544, 41546, 41660, 41674, 41676, 41683, 41686, 41706, 41711, 41716, 42020, 42025, 42026, 42032, 42086, 42088, 42091, 42098, 42099, 42156, 42157, 42162, 42166, 42169, 42176, 42179, 42184, 42185, 42192, 42210, 42214, 42220, 45687, 45695, 45699, 45705, 46001, 46004, 46010, 46017, 46019, 46026, 46031, 46036, 46063, 46069, 46073, 46080, 46085, 46088, 46094, 46101, 46106, 46108, 46130, 46134, 46139, 46146, 46148, 46155, 46159, 46166, 46168, 46175, 46185, 46192, 46194, 46202, 46206, 46212, 46214, 46219, 46225, 46229, 46237, 111284, 111336, 45705, 111330, 111308, 46139, 42179, 111355, 46237, 111290, 46175, 111327, 111323, 42088, 46130, 111343, 41546, 46004, 46088, 46185, 45695, 111295, 111311, 46202, 41711, 46134, 41539, 111351, 42086, 111340, 111302, 46212, 111346, 46166, 45687, 46148, 42156, 41536, 111278, 46194, 42026, 111287, 42032, 111300, 41706, 46069, 42162}, -- selects option 1, then 3
    -- Chinese localized names
    ["历史学家吉帕"] = {
        46192, 46206, 111342, 46155, 46237, 111330, 46139, 46219, 46130, 42032,
        46168, 111278, 45705, 111355, 46194, 46175, 46202, 111346, 111311,
        111302, 46225, 111320, 42156, 41532, 42026, 46148, 111295, 42091,
        111287, 42192, 111314, 46146, 46134, 41523, 111300, 41546, 111290,
        46108, 41544, 46063, 46004, 111323, 46019, 111327, 46031, 42185,
        42157, 42162, 41686, 111284, 46069
    },
    ["历史学家勒洛尔"] = {41523, 41528, 41532, 41536, 41539, 41544, 41546, 41660, 41674, 41676, 41683, 41686, 41706, 41711, 41716, 42020, 42025, 42026, 42032, 42086, 42088, 42091, 42098, 42099, 42156, 42157, 42162, 42166, 42169, 42176, 42179, 42184, 42185, 42192, 42210, 42214, 42220, 45687, 45695, 45699, 45705, 46001, 46004, 46010, 46017, 46019, 46026, 46031, 46036, 46063, 46069, 46073, 46080, 46085, 46088, 46094, 46101, 46106, 46108, 46130, 46134, 46139, 46146, 46148, 46155, 46159, 46166, 46168, 46175, 46185, 46192, 46194, 46202, 46206, 46212, 46214, 46219, 46225, 46229, 46237, 111284, 111336, 45705, 111330, 111308, 46139, 42179, 111355, 46237, 111290, 46175, 111327, 111323, 42088, 46130, 111343, 41546, 46004, 46088, 46185, 45695, 111295, 111311, 46202, 41711, 46134, 41539, 111351, 42086, 111340, 111302, 46212, 111346, 46166, 45687, 46148, 42156, 41536, 111278, 46194, 42026, 111287, 42032, 111300, 41706, 46069, 42162}, -- selects option 1, then 3
}

local NPC_LIST = defaultNPC_LIST

-- Create the frame for automatic gossip handling
local AutoGossip = CreateFrame("Frame")

-- Function to get the localized NPC name
local function GetLocalizedNPCName(npcName)
    local localizedNPCName = nil
    -- Add more language checks if needed
    if GetLocale() == "ruRU" then
        for name, gossips in pairs(NPC_LIST) do
            if gossips == npcName then
                localizedNPCName = name
                break
            end
        end
    elseif GetLocale() == "deDE" then
        for name, gossips in pairs(NPC_LIST) do
            if gossips == npcName then
                localizedNPCName = name
                break
            end
        end
    elseif GetLocale() == "frFR" then
        for name, gossips in pairs(NPC_LIST) do
            if gossips == npcName then
                localizedNPCName = name
                break
            end
        end
    elseif GetLocale() == "zhCN" then
        for name, gossips in pairs(NPC_LIST) do
            if gossips == npcName then
                localizedNPCName = name
                break
            end
        end
    end
    return localizedNPCName or npcName
end

-- Function to handle gossip interaction
local function HandleGossipInteraction(_, type)
    if IsShiftKeyDown() then return end
    if type ~= Enum.PlayerInteractionType.Gossip then return end
    local npcName = GossipFrame.TitleContainer.TitleText:GetText()
    if not npcName then return end
    local gossips = NPC_LIST[npcName]
    if not gossips then
        -- Try to find localized NPC name if not found in the default language
        npcName = GetLocalizedNPCName(npcName)
        gossips = NPC_LIST[npcName]
        if not gossips then return end
    end
    local options = C_GossipInfo.GetOptions()
    if not options then return end
    for _, option in ipairs(options) do
        if tContains(gossips, option.gossipOptionID) then
            C_GossipInfo.SelectOption(option.gossipOptionID)
            return
        end
    end
end

-- Set script for gossip interaction event
AutoGossip:SetScript("OnEvent", HandleGossipInteraction)
AutoGossip:RegisterEvent("PLAYER_INTERACTION_MANAGER_FRAME_SHOW")

-- Function to load saved variables
local function LoadSavedVariables()
    if AutoGossipSavedVarsonon and AutoGossipSavedVarsonon.NPC_LIST then
        -- Replace the default NPC_LIST with the saved one
        NPC_LIST = AutoGossipSavedVarsonon.NPC_LIST
    end
end

-- Function to save variables
local function SaveSavedVariables()
    if not AutoGossipSavedVarsonon then
        AutoGossipSavedVarsonon = {}
    end
    -- Save the NPC_LIST
    AutoGossipSavedVarsonon.NPC_LIST = NPC_LIST
end

-- Function to handle player logout event
local function OnPlayerLogout()
    SaveSavedVariables()
end

-- Event registration for addon loaded and player logout
AutoGossip:RegisterEvent("ADDON_LOADED")
AutoGossip:RegisterEvent("PLAYER_LOGOUT")

-- Event handler for addon loaded and player logout
AutoGossip:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == addonName then
        LoadSavedVariables()
        self:UnregisterEvent("ADDON_LOADED")
    elseif event == "PLAYER_LOGOUT" then
        OnPlayerLogout()
    else
        HandleGossipInteraction(event, arg1)
    end
end)
