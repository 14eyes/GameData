require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72167 = class("Quest72167", QuestActorProxy)
Quest72167.defaultAlias = "Quest72167"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72167:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72167:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7216701"] = self.OnSubStart7216701,
        ["7216702"] = self.OnSubStart7216702,
        ["7216703"] = self.OnSubStart7216703,
        ["7216723"] = self.OnSubStart7216723,
        ["7216720"] = self.OnSubStart7216720,
        ["7216704"] = self.OnSubStart7216704,
        ["7216706"] = self.OnSubStart7216706,
        ["7216705"] = self.OnSubStart7216705,
        ["7216736"] = self.OnSubStart7216736,
        ["7216732"] = self.OnSubStart7216732,
        ["7216707"] = self.OnSubStart7216707,
        ["7216708"] = self.OnSubStart7216708,
        ["7216709"] = self.OnSubStart7216709,
        ["7216722"] = self.OnSubStart7216722,
        ["7216737"] = self.OnSubStart7216737,
        ["7216710"] = self.OnSubStart7216710,
        ["7216738"] = self.OnSubStart7216738,
        ["7216711"] = self.OnSubStart7216711,
        ["7216725"] = self.OnSubStart7216725,
        ["7216712"] = self.OnSubStart7216712,
        ["7216726"] = self.OnSubStart7216726,
        ["7216713"] = self.OnSubStart7216713,
        ["7216727"] = self.OnSubStart7216727,
        ["7216728"] = self.OnSubStart7216728,
        ["7216714"] = self.OnSubStart7216714,
        ["7216729"] = self.OnSubStart7216729,
        ["7216730"] = self.OnSubStart7216730,
        ["7216715"] = self.OnSubStart7216715,
        ["7216731"] = self.OnSubStart7216731,
        ["7216721"] = self.OnSubStart7216721,
        ["7216717"] = self.OnSubStart7216717,
        ["7216733"] = self.OnSubStart7216733,
        ["7216716"] = self.OnSubStart7216716,
        ["7216739"] = self.OnSubStart7216739,
        ["7216718"] = self.OnSubStart7216718,
        ["7216735"] = self.OnSubStart7216735,
        ["7216724"] = self.OnSubStart7216724,
        ["7216734"] = self.OnSubStart7216734,
        ["7216719"] = self.OnSubStart7216719
    }
end

function Quest72167:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7216701"] = self.OnSubFinish7216701,
        ["7216702"] = self.OnSubFinish7216702,
        ["7216703"] = self.OnSubFinish7216703,
        ["7216723"] = self.OnSubFinish7216723,
        ["7216720"] = self.OnSubFinish7216720,
        ["7216704"] = self.OnSubFinish7216704,
        ["7216706"] = self.OnSubFinish7216706,
        ["7216705"] = self.OnSubFinish7216705,
        ["7216736"] = self.OnSubFinish7216736,
        ["7216732"] = self.OnSubFinish7216732,
        ["7216707"] = self.OnSubFinish7216707,
        ["7216708"] = self.OnSubFinish7216708,
        ["7216709"] = self.OnSubFinish7216709,
        ["7216722"] = self.OnSubFinish7216722,
        ["7216737"] = self.OnSubFinish7216737,
        ["7216710"] = self.OnSubFinish7216710,
        ["7216738"] = self.OnSubFinish7216738,
        ["7216711"] = self.OnSubFinish7216711,
        ["7216725"] = self.OnSubFinish7216725,
        ["7216712"] = self.OnSubFinish7216712,
        ["7216726"] = self.OnSubFinish7216726,
        ["7216713"] = self.OnSubFinish7216713,
        ["7216727"] = self.OnSubFinish7216727,
        ["7216728"] = self.OnSubFinish7216728,
        ["7216714"] = self.OnSubFinish7216714,
        ["7216729"] = self.OnSubFinish7216729,
        ["7216730"] = self.OnSubFinish7216730,
        ["7216715"] = self.OnSubFinish7216715,
        ["7216731"] = self.OnSubFinish7216731,
        ["7216721"] = self.OnSubFinish7216721,
        ["7216717"] = self.OnSubFinish7216717,
        ["7216733"] = self.OnSubFinish7216733,
        ["7216716"] = self.OnSubFinish7216716,
        ["7216739"] = self.OnSubFinish7216739,
        ["7216718"] = self.OnSubFinish7216718,
        ["7216735"] = self.OnSubFinish7216735,
        ["7216724"] = self.OnSubFinish7216724,
        ["7216734"] = self.OnSubFinish7216734,
        ["7216719"] = self.OnSubFinish7216719
    }
end

function Quest72167:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7216701"] = self.OnSubFailed7216701,
        ["7216702"] = self.OnSubFailed7216702,
        ["7216703"] = self.OnSubFailed7216703,
        ["7216723"] = self.OnSubFailed7216723,
        ["7216720"] = self.OnSubFailed7216720,
        ["7216704"] = self.OnSubFailed7216704,
        ["7216706"] = self.OnSubFailed7216706,
        ["7216705"] = self.OnSubFailed7216705,
        ["7216736"] = self.OnSubFailed7216736,
        ["7216732"] = self.OnSubFailed7216732,
        ["7216707"] = self.OnSubFailed7216707,
        ["7216708"] = self.OnSubFailed7216708,
        ["7216709"] = self.OnSubFailed7216709,
        ["7216722"] = self.OnSubFailed7216722,
        ["7216737"] = self.OnSubFailed7216737,
        ["7216710"] = self.OnSubFailed7216710,
        ["7216738"] = self.OnSubFailed7216738,
        ["7216711"] = self.OnSubFailed7216711,
        ["7216725"] = self.OnSubFailed7216725,
        ["7216712"] = self.OnSubFailed7216712,
        ["7216726"] = self.OnSubFailed7216726,
        ["7216713"] = self.OnSubFailed7216713,
        ["7216727"] = self.OnSubFailed7216727,
        ["7216728"] = self.OnSubFailed7216728,
        ["7216714"] = self.OnSubFailed7216714,
        ["7216729"] = self.OnSubFailed7216729,
        ["7216730"] = self.OnSubFailed7216730,
        ["7216715"] = self.OnSubFailed7216715,
        ["7216731"] = self.OnSubFailed7216731,
        ["7216721"] = self.OnSubFailed7216721,
        ["7216717"] = self.OnSubFailed7216717,
        ["7216733"] = self.OnSubFailed7216733,
        ["7216716"] = self.OnSubFailed7216716,
        ["7216739"] = self.OnSubFailed7216739,
        ["7216718"] = self.OnSubFailed7216718,
        ["7216735"] = self.OnSubFailed7216735,
        ["7216724"] = self.OnSubFailed7216724,
        ["7216734"] = self.OnSubFailed7216734,
        ["7216719"] = self.OnSubFailed7216719
    }
end

function Quest72167:Start()
    print("Start")
end

function Quest72167:OnDestroy()
    print("OnDestroy")
end

function Quest72167:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72167:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72167:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72167:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72167:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            self:ActionSafeCall(function()
                actor:FinishQuestID(false, 7216703)
            end)
        end
    elseif arg1 == 2 then
        self:SetQuestVarByMainId(1, 1)
    elseif arg1 == 3 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 7216724)
        end
    elseif arg1 == 4 then
        self:SetQuestVarByMainId(2, 1)
    end
end

function Quest72167:OnSubStart7216701(arg1)
    print("OnSubStart7216701")
end

function Quest72167:OnSubFinish7216701(arg1)
    print("OnSubFinish7216701")
end

function Quest72167:OnSubFailed7216701(arg1)
    print("OnSubFailed7216701")
end

function Quest72167:OnSubStart7216702(arg1)
    print("OnSubStart7216702")
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
end

function Quest72167:OnSubFinish7216702(arg1)
    print("OnSubFinish7216702")
end

function Quest72167:OnSubFailed7216702(arg1)
    print("OnSubFailed7216702")
end

function Quest72167:OnSubStart7216703(arg1)
    print("OnSubStart7216703")
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
end

function Quest72167:OnSubFinish7216703(arg1)
    print("OnSubFinish7216703")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 10)
end

function Quest72167:OnSubFailed7216703(arg1)
    print("OnSubFailed7216703")
end

function Quest72167:OnSubStart7216723(arg1)
    print("OnSubStart7216723")
end

function Quest72167:OnSubFinish7216723(arg1)
    print("OnSubFinish7216723")
end

function Quest72167:OnSubFailed7216723(arg1)
    print("OnSubFailed7216723")
end

function Quest72167:OnSubStart7216720(arg1)
    print("OnSubStart7216720")
end

function Quest72167:OnSubFinish7216720(arg1)
    print("OnSubFinish7216720")
end

function Quest72167:OnSubFailed7216720(arg1)
    print("OnSubFailed7216720")
end

function Quest72167:OnSubStart7216704(arg1)
    print("OnSubStart7216704")
end

function Quest72167:OnSubFinish7216704(arg1)
    print("OnSubFinish7216704")
end

function Quest72167:OnSubFailed7216704(arg1)
    print("OnSubFailed7216704")
end

function Quest72167:OnSubStart7216706(arg1)
    print("OnSubStart7216706")
    self:CallDelay(3, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
        actorMgr:CreateActorWithPos("Q7216706Trigger", "Actor/Gadget/Q7216706Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72167_chuansong").pos, sceneData:GetDummyPoint(3, "72167_chuansong").rot, true, false, 3)
    end)
end

function Quest72167:OnSubFinish7216706(arg1)
    print("OnSubFinish7216706")
    self:SafeDestroyQuestNpc(npcs.Npc20321Data.alias, 3)
end

function Quest72167:OnSubFailed7216706(arg1)
    print("OnSubFailed7216706")
end

function Quest72167:OnSubStart7216705(arg1)
    print("OnSubStart7216705")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20445Data.id, 2)
    actorMgr:CreateActorWithPos("Q7216705", "Actor/Gadget/Q7216705", 70900002, 0, sceneData:GetDummyPoint(3, "72167_jinquan").pos, sceneData:GetDummyPoint(3, "72167_jinquan").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7216705Trigger", "Actor/Gadget/Q7216705Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72173_start").pos, sceneData:GetDummyPoint(3, "72173_start").rot, true, false, 3)
end

function Quest72167:OnSubFinish7216705(arg1)
    print("OnSubFinish7216705")
end

function Quest72167:OnSubFailed7216705(arg1)
    print("OnSubFailed7216705")
end

function Quest72167:OnSubStart7216736(arg1)
    print("OnSubStart7216736")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20445Data.id, 2)
    self:PlayCutsceneIndex("7216736", function(arg1)
        arg1:FinishQuestID(false, 7216736)
    end, nil, nil, false)
end

function Quest72167:OnSubFinish7216736(arg1)
    print("OnSubFinish7216736")
end

function Quest72167:OnSubFailed7216736(arg1)
    print("OnSubFailed7216736")
end

function Quest72167:OnSubStart7216732(arg1)
    print("OnSubStart7216732")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20445Data.id, 2)
    self:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7216732, npcs.PaimonData.id, 0.5)
        arg1:CallDelay(0.5, function(arg1)
            arg1:EnablePlayerInput(true)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, "", false, true)
end

function Quest72167:OnSubFinish7216732(arg1)
    print("OnSubFinish7216732")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72167:OnSubFailed7216732(arg1)
    print("OnSubFailed7216732")
end

function Quest72167:OnSubStart7216707(arg1)
    print("OnSubStart7216707")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20445Data.id, 2)
end

function Quest72167:OnSubFinish7216707(arg1)
    print("OnSubFinish7216707")
    self:SafeDestroyQuestNpc(npcs.Npc20445Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTask(datas.paimengkid, nil, "")
    end)
end

function Quest72167:OnSubFailed7216707(arg1)
    print("OnSubFailed7216707")
end

function Quest72167:OnSubStart7216708(arg1)
    print("OnSubStart7216708")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 4)
    actorMgr:CreateActorWithPos("Q7216708", "Actor/Gadget/Q7216708", 70900002, 0, sceneData:GetDummyPoint(3, "72167_jiaoxue").pos, sceneData:GetDummyPoint(3, "72167_jiaoxue").rot, true, false, 3)
end

function Quest72167:OnSubFinish7216708(arg1)
    print("OnSubFinish7216708")
end

function Quest72167:OnSubFailed7216708(arg1)
    print("OnSubFailed7216708")
end

function Quest72167:OnSubStart7216709(arg1)
    print("OnSubStart7216709")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 4)
end

function Quest72167:OnSubFinish7216709(arg1)
    print("OnSubFinish7216709")
end

function Quest72167:OnSubFailed7216709(arg1)
    print("OnSubFailed7216709")
end

function Quest72167:OnSubStart7216722(arg1)
    print("OnSubStart7216722")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 4)
end

function Quest72167:OnSubFinish7216722(arg1)
    print("OnSubFinish7216722")
end

function Quest72167:OnSubFailed7216722(arg1)
    print("OnSubFailed7216722")
end

function Quest72167:OnSubStart7216737(arg1)
    print("OnSubStart7216737")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 4)
    self:PlayCutsceneIndex("7216737", function(arg1)
        arg1:FinishQuestID(false, 7216737)
        arg1:ActionSafeCall(function(arg1)
            arg1:NarratorOnlyTask(datas.Q7216737, nil, "")
        end)
    end, nil, nil, false)
end

function Quest72167:OnSubFinish7216737(arg1)
    print("OnSubFinish7216737")
end

function Quest72167:OnSubFailed7216737(arg1)
    print("OnSubFailed7216737")
end

function Quest72167:OnSubStart7216710(arg1)
    print("OnSubStart7216710")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 4)
end

function Quest72167:OnSubFinish7216710(arg1)
    print("OnSubFinish7216710")
end

function Quest72167:OnSubFailed7216710(arg1)
    print("OnSubFailed7216710")
end

function Quest72167:OnSubStart7216738(arg1)
    print("OnSubStart7216738")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 4)
    self:PlayCutsceneIndex("7216738", function(arg1)
        arg1:FinishQuestID(false, 7216738)
    end, nil, nil, false)
end

function Quest72167:OnSubFinish7216738(arg1)
    print("OnSubFinish7216738")
end

function Quest72167:OnSubFailed7216738(arg1)
    print("OnSubFailed7216738")
end

function Quest72167:OnSubStart7216711(arg1)
    print("OnSubStart7216711")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 4)
end

function Quest72167:OnSubFinish7216711(arg1)
    print("OnSubFinish7216711")
    self:SafeDestroyQuestNpc(npcs.Npc20320Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20461Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20462Data.alias, 3)
    self:NarratorOnlyTask(datas.paimengjiaoxue, nil, "")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72167:OnSubFailed7216711(arg1)
    print("OnSubFailed7216711")
end

function Quest72167:OnSubStart7216725(arg1)
    print("OnSubStart7216725")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20323Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20448Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 7)
    actorMgr:CreateActorWithPos("Q7216725", "Actor/Gadget/Q7216725", 70900002, 0, sceneData:GetDummyPoint(3, "72167_aliujisi").pos, sceneData:GetDummyPoint(3, "72167_aliujisi").rot, true, false, 3)
end

function Quest72167:OnSubFinish7216725(arg1)
    print("OnSubFinish7216725")
end

function Quest72167:OnSubFailed7216725(arg1)
    print("OnSubFailed7216725")
end

function Quest72167:OnSubStart7216712(arg1)
    print("OnSubStart7216712")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20323Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20448Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 7)
end

function Quest72167:OnSubFinish7216712(arg1)
    print("OnSubFinish7216712")
    self:NarratorOnlyTask(datas.paimengjisi, nil, "")
end

function Quest72167:OnSubFailed7216712(arg1)
    print("OnSubFailed7216712")
end

function Quest72167:OnSubStart7216726(arg1)
    print("OnSubStart7216726")
end

function Quest72167:OnSubFinish7216726(arg1)
    print("OnSubFinish7216726")
end

function Quest72167:OnSubFailed7216726(arg1)
    print("OnSubFailed7216726")
end

function Quest72167:OnSubStart7216713(arg1)
    print("OnSubStart7216713")
end

function Quest72167:OnSubFinish7216713(arg1)
    print("OnSubFinish7216713")
end

function Quest72167:OnSubFailed7216713(arg1)
    print("OnSubFailed7216713")
end

function Quest72167:OnSubStart7216727(arg1)
    print("OnSubStart7216727")
end

function Quest72167:OnSubFinish7216727(arg1)
    print("OnSubFinish7216727")
end

function Quest72167:OnSubFailed7216727(arg1)
    print("OnSubFailed7216727")
end

function Quest72167:OnSubStart7216728(arg1)
    print("OnSubStart7216728")
end

function Quest72167:OnSubFinish7216728(arg1)
    print("OnSubFinish7216728")
end

function Quest72167:OnSubFailed7216728(arg1)
    print("OnSubFailed7216728")
end

function Quest72167:OnSubStart7216714(arg1)
    print("OnSubStart7216714")
end

function Quest72167:OnSubFinish7216714(arg1)
    print("OnSubFinish7216714")
end

function Quest72167:OnSubFailed7216714(arg1)
    print("OnSubFailed7216714")
end

function Quest72167:OnSubStart7216729(arg1)
    print("OnSubStart7216729")
end

function Quest72167:OnSubFinish7216729(arg1)
    print("OnSubFinish7216729")
end

function Quest72167:OnSubFailed7216729(arg1)
    print("OnSubFailed7216729")
end

function Quest72167:OnSubStart7216730(arg1)
    print("OnSubStart7216730")
end

function Quest72167:OnSubFinish7216730(arg1)
    print("OnSubFinish7216730")
end

function Quest72167:OnSubFailed7216730(arg1)
    print("OnSubFailed7216730")
end

function Quest72167:OnSubStart7216715(arg1)
    print("OnSubStart7216715")
end

function Quest72167:OnSubFinish7216715(arg1)
    print("OnSubFinish7216715")
end

function Quest72167:OnSubFailed7216715(arg1)
    print("OnSubFailed7216715")
end

function Quest72167:OnSubStart7216731(arg1)
    print("OnSubStart7216731")
end

function Quest72167:OnSubFinish7216731(arg1)
    print("OnSubFinish7216731")
end

function Quest72167:OnSubFailed7216731(arg1)
    print("OnSubFailed7216731")
end

function Quest72167:OnSubStart7216721(arg1)
    print("OnSubStart7216721")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20323Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20448Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 7)
end

function Quest72167:OnSubFinish7216721(arg1)
    print("OnSubFinish7216721")
    self:SafeDestroyQuestNpc(npcs.Npc20323Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20446Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20447Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20448Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20450Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20451Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.PMJS, nil, "")
    end)
end

function Quest72167:OnSubFailed7216721(arg1)
    print("OnSubFailed7216721")
end

function Quest72167:OnSubStart7216717(arg1)
    print("OnSubStart7216717")
end

function Quest72167:OnSubFinish7216717(arg1)
    print("OnSubFinish7216717")
end

function Quest72167:OnSubFailed7216717(arg1)
    print("OnSubFailed7216717")
end

function Quest72167:OnSubStart7216733(arg1)
    print("OnSubStart7216733")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:EnablePlayerInput(false)
    self:CallDelay(0.5, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7216733, npcs.PaimonData.id, 1)
        arg1:CallDelay(0.5, function(arg1)
            arg1:EnablePlayerInput(true)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end)
end

function Quest72167:OnSubFinish7216733(arg1)
    print("OnSubFinish7216733")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72167:OnSubFailed7216733(arg1)
    print("OnSubFailed7216733")
end

function Quest72167:OnSubStart7216716(arg1)
    print("OnSubStart7216716")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    actorMgr:CreateActorWithPos("Q7216716", "Actor/Gadget/Q7216716", 70900002, 0, sceneData:GetDummyPoint(3, "72167_aliujisi").pos, sceneData:GetDummyPoint(3, "72167_aliujisi").rot, true, false, 3)
end

function Quest72167:OnSubFinish7216716(arg1)
    print("OnSubFinish7216716")
end

function Quest72167:OnSubFailed7216716(arg1)
    print("OnSubFailed7216716")
end

function Quest72167:OnSubStart7216739(arg1)
    print("OnSubStart7216739")
    self:CreateQuestNpcFaceToPlayer(7216733, npcs.PaimonData.id, 2)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest72167:OnSubFinish7216739(arg1)
    print("OnSubFinish7216739")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72167:OnSubFailed7216739(arg1)
    print("OnSubFailed7216739")
end

function Quest72167:OnSubStart7216718(arg1)
    print("OnSubStart7216718")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
end

function Quest72167:OnSubFinish7216718(arg1)
    print("OnSubFinish7216718")
end

function Quest72167:OnSubFailed7216718(arg1)
    print("OnSubFailed7216718")
end

function Quest72167:OnSubStart7216735(arg1)
    print("OnSubStart7216735")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:EnablePlayerInput(false)
    self:CallDelay(1, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7216735, npcs.PaimonData.id, 2)
        arg1:CallDelay(1.5, function(arg1)
            arg1:EnablePlayerInput(true)
        end)
    end)
end

function Quest72167:OnSubFinish7216735(arg1)
    print("OnSubFinish7216735")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72167:OnSubFailed7216735(arg1)
    print("OnSubFailed7216735")
end

function Quest72167:OnSubStart7216724(arg1)
    print("OnSubStart7216724")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
end

function Quest72167:OnSubFinish7216724(arg1)
    print("OnSubFinish7216724")
    self:TransmitPlayerWithTextById(arg1, 2, datas.TextmapId1, 8)
end

function Quest72167:OnSubFailed7216724(arg1)
    print("OnSubFailed7216724")
end

function Quest72167:OnSubStart7216734(arg1)
    print("OnSubStart7216734")
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
        actorMgr:CreateActorWithPos("Q7216734Trigger", "Actor/Gadget/Q7216734Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72167_afu").pos, sceneData:GetDummyPoint(3, "72167_afu").rot, true, false, 3)
    end)
end

function Quest72167:OnSubFinish7216734(arg1)
    print("OnSubFinish7216734")
    self:SafeDestroyQuestNpc(npcs.Npc20322Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:NarratorOnlyTask(datas.pmfin, nil, "")
end

function Quest72167:OnSubFailed7216734(arg1)
    print("OnSubFailed7216734")
end

function Quest72167:OnSubStart7216719(arg1)
    print("OnSubStart7216719")
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
end

function Quest72167:OnSubFinish7216719(arg1)
    print("OnSubFinish7216719")
    self:SafeDestroyQuestNpc(npcs.Npc20321Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72167:OnSubFailed7216719(arg1)
    print("OnSubFailed7216719")
end

return Quest72167
