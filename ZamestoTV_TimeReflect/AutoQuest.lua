local addonName, addon = ...
local frame = CreateFrame("Frame")
frame:RegisterEvent("GOSSIP_SHOW")
frame:RegisterEvent("QUEST_DETAIL")
frame:RegisterEvent("QUEST_PROGRESS")
frame:RegisterEvent("QUEST_COMPLETE")

local function AcceptAndTurnInQuest(questID)
    if not C_QuestLog.IsQuestFlaggedCompleted(questID) then
        if QuestGetAutoAccept() or (not QuestIsFromAreaTrigger() and not QuestIsFromAdventureMap()) then
            AcceptQuest()
        end
        if QuestFrame:IsVisible() then
            QuestFrameCompleteQuestButton:Click()
        elseif GossipFrame:IsVisible() then
            C_GossipInfo.SelectAvailableQuest(questID)
        end
    end
end

frame:SetScript("OnEvent", function(_, event)
    if event == "GOSSIP_SHOW" then
        local gossipOptions = C_GossipInfo.GetAvailableQuests()
        for i = 1, #gossipOptions do
            local questID = gossipOptions[i].questID
            if questID == 85481 or questID == 89197 or questID == 86342 or questID == 90545 or questID == 89194 or questID == 89065 or questID == 88981 or questID == 85721 or questID == 85462 or questID == 89254 or questID == 85470 or questID == 89192 or questID == 89057 then
                C_GossipInfo.SelectAvailableQuest(questID)
                break
            end
        end
    elseif event == "QUEST_DETAIL" then
        local questID = GetQuestID()
        if questID == 85481 or questID == 89197 or questID == 86342 or questID == 90545 or questID == 89194 or questID == 89065 or questID == 88981 or questID == 85721 or questID == 85462 or questID == 89254 or questID == 85470 or questID == 89192 or questID == 89057 then
            AcceptAndTurnInQuest(questID)
        end
    elseif event == "QUEST_PROGRESS" then
        local questID = GetQuestID()
        if questID == 85481 or questID == 89197 or questID == 86342 or questID == 90545 or questID == 89194 or questID == 89065 or questID == 88981 or questID == 85721 or questID == 85462 or questID == 89254 or questID == 85470 or questID == 89192 or questID == 89057 then
            CompleteQuest()
        end
    elseif event == "QUEST_COMPLETE" then
        local questID = GetQuestID()
        if questID == 85481 or questID == 89197 or questID == 86342 or questID == 90545 or questID == 89194 or questID == 89065 or questID == 88981 or questID == 85721 or questID == 85462 or questID == 89254 or questID == 85470 or questID == 89192 or questID == 89057 then
            GetQuestReward(1)
        end
    end
end)