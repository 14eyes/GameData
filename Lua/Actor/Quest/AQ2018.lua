require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2018 = class("Quest2018", QuestActorProxy)
Quest2018.defaultAlias = "Quest2018"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest2018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest2018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["201801"] = self.OnSubStart201801,
        ["201802"] = self.OnSubStart201802,
        ["201803"] = self.OnSubStart201803,
        ["201805"] = self.OnSubStart201805,
        ["201806"] = self.OnSubStart201806,
        ["201807"] = self.OnSubStart201807,
        ["201804"] = self.OnSubStart201804
    }
end

function Quest2018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["201801"] = self.OnSubFinish201801,
        ["201802"] = self.OnSubFinish201802,
        ["201803"] = self.OnSubFinish201803,
        ["201805"] = self.OnSubFinish201805,
        ["201806"] = self.OnSubFinish201806,
        ["201807"] = self.OnSubFinish201807,
        ["201804"] = self.OnSubFinish201804
    }
end

function Quest2018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["201801"] = self.OnSubFailed201801,
        ["201802"] = self.OnSubFailed201802,
        ["201803"] = self.OnSubFailed201803,
        ["201805"] = self.OnSubFailed201805,
        ["201806"] = self.OnSubFailed201806,
        ["201807"] = self.OnSubFailed201807,
        ["201804"] = self.OnSubFailed201804
    }
end

function Quest2018:Start()
    print("Start")
end

function Quest2018:OnDestroy()
    print("OnDestroy")
end

function Quest2018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2018:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest2018:NpcCreateWithBlackscreenInteractionDelay(arg1, arg2, arg3, arg4)
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, arg2, arg3)
            arg1_2:RequestInteraction(arg4)
        end)
    end)
end

function Quest2018:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:ShowReadingDialog(101543)
    elseif arg1 == 2 then
        self:SpawnGadgetById(201802, 70710503)
    elseif arg1 == 3 then
        self:UnSpawn("Gadget70710503")
    end
end

function Quest2018:OnSubStart201801(arg1)
    print("OnSubStart201801")
end

function Quest2018:OnSubFinish201801(arg1)
    print("OnSubFinish201801")
end

function Quest2018:OnSubFailed201801(arg1)
    print("OnSubFailed201801")
end

function Quest2018:OnSubStart201802(arg1)
    print("OnSubStart201802")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 3)
    end)

    actorMgr:CreateActorWithPos("Q2018Trigger1", "Actor/Gadget/Q2018Trigger1", 70900002, 0, {x = -2494.67, y = 443.1654, z = -4378.441}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest2018:OnSubFinish201802(arg1)
    print("OnSubFinish201802")
    self:DestroyQuestNpcActor(npcs.Npc1013Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1033Data.alias, 3)
end

function Quest2018:OnSubFailed201802(arg1)
    print("OnSubFailed201802")
end

function Quest2018:OnSubStart201803(arg1)
    print("OnSubStart201803")
    local actor = actorMgr:GetActor("2022")
    if actor ~= nil then
        actor:DestroyQuestNpcActor("Npc20458", 3)
        actor:DestroyQuestNpcActor("Npc20470", 3)
        actor:DestroyQuestNpcActor("Npc20474", 3)
        actor:DestroyQuestNpcActor("Npc12093", 3)
    end

    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc1038Data.id, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3058Data.id, 2)
        arg1_2:NotifyTo(npcs.Npc3055Data.alias, 1, true)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3056Data.id, 4)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3059Data.id, 5)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3025Data.id, 6)
        arg1_2:CreateSpeechBubbleTask(npcs.Npc3025Data.id, 20189901, 5, true, 10, 15, true)
        actorMgr:CreateActorWithPos("Q2018Trigger", "Actor/Gadget/Q2018Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q201803Jiutiao").pos, sceneData:GetDummyPoint(3, "Q201803Jiutiao").rot, true, false, 3)
    end)
end

function Quest2018:OnSubFinish201803(arg1)
    print("OnSubFinish201803")
    self:DestroyQuestNpcActor(npcs.Npc1034Data.alias, 3)
end

function Quest2018:OnSubFailed201803(arg1)
    print("OnSubFailed201803")
end

function Quest2018:OnSubStart201805(arg1)
    print("OnSubStart201805")
    local actor = actorMgr:GetActor("2022")
    if actor ~= nil then
        actor:DestroyQuestNpcActor("Npc20458", 3)
        actor:DestroyQuestNpcActor("Npc20470", 3)
        actor:DestroyQuestNpcActor("Npc20474", 3)
    end

    self:CreateSpeechBubbleTask(npcs.Npc3025Data.id, 20189901, 5, true, 10, 15, true)
    self:GetQuestNpcActor(npcs.Npc3025Data.alias):EnableHeadCtrl(false)
    self:RequestInteraction(npcs.Npc1038Data.alias)
end

function Quest2018:OnSubFinish201805(arg1)
    print("OnSubFinish201805")
    self.ActionSafeCall(self, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1038Data.alias)
        questNpcActor.RunToRouteTask(questNpcActor, datas.RoutePointsData, function(arg1)
            questNpcActor:DestroyWithDither(false, 2)
        end)
    end, nil, nil, function()
        self:DestroyQuestNpcActor(npcs.Npc1038Data.alias, 3)
    end)

    self.CreateSpeechBubbleTask(self, npcs.Npc3058Data.id, 20189902, 3, true, 1, 2, true)
    self.CreateSpeechBubbleTask(self, npcs.Npc3059Data.id, 20189903, 3.5, true, 1, 2, true)
    self.CreateSpeechBubbleTask(self, npcs.Npc3056Data.id, 20189905, 4, true, 1, 2, true)
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc3058Data.alias)
    local v = self.GetQuestNpcActor(self, npcs.Npc3059Data.alias)
    local questNpcActor2 = self.GetQuestNpcActor(self, npcs.Npc3056Data.alias)
    local questNpcActor3 = self.GetQuestNpcActor(self, npcs.Npc3025Data.alias)
    self.CallDelay(self, 0.5, function()
        questNpcActor3:SteerToTask(M.Euler2DirXZ({y = -52.97}), 1, true, true)
        self:StopQuestSpeechBubbleByNpc(npcs.Npc3025Data.id)
        questNpcActor3:EnableHeadCtrl(true)
    end)

    self.CallDelay(self, 3.7, function()
        questNpcActor:SteerToTask(M.Euler2DirXZ({y = -110.52}), 1, true, true)
    end)

    self.CallDelay(self, 8.3, function()
        v:SteerToTask(M.Euler2DirXZ({y = -120.85}), 1, true, true)
    end)

    self.CallDelay(self, 11.1, function()
        questNpcActor2:SteerToTask(M.Euler2DirXZ({y = 174.56}), 1, true, true)
    end)
end

function Quest2018:OnSubFailed201805(arg1)
    print("OnSubFailed201805")
end

function Quest2018:OnSubStart201806(arg1)
    print("OnSubStart201806")
    local actor = actorMgr:GetActor("2022")
    if actor ~= nil then
        actor:DestroyQuestNpcActor("Npc20458", 3)
        actor:DestroyQuestNpcActor("Npc20470", 3)
        actor:DestroyQuestNpcActor("Npc20474", 3)
    end

    self:NotifyTo(npcs.Npc3055Data.alias, 1, true)
    if self:GetQuestVar(arg1.QuestConfigId, 0) == 1 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc3058Data.alias)
        local v = self:GetQuestNpcActor(npcs.Npc3059Data.alias)
        local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc3056Data.alias)
        self:GetQuestNpcActor(npcs.Npc3025Data.alias):SteerToTask(M.Euler2DirXZ({y = -52.97}), 0.1, false, false)
        questNpcActor:SteerToTask(M.Euler2DirXZ({y = -110.52}), 0.1, false, false)
        v:SteerToTask(M.Euler2DirXZ({y = -120.85}), 0.1, false, false)
        questNpcActor2:SteerToTask(M.Euler2DirXZ({y = 174.56}), 0.1, false, false)
        self:CreateSpeechBubbleTask(npcs.Npc3058Data.id, 20189902, 3, true, 1, 2, true)
        self:CreateSpeechBubbleTask(npcs.Npc3059Data.id, 20189903, 3.5, true, 1, 2, true)
        self:CreateSpeechBubbleTask(npcs.Npc3056Data.id, 20189905, 4, true, 1, 2, true)
    end
end

function Quest2018:OnSubFinish201806(arg1)
    print("OnSubFinish201806")
end

function Quest2018:OnSubFailed201806(arg1)
    print("OnSubFailed201806")
end

function Quest2018:OnSubStart201807(arg1)
    print("OnSubStart201807")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 2018)
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3053Data.alias, 1065)
        arg1:DestroyQuestNpcActor("Paimon", 1065)
        arg1:DestroyQuestNpcActor(npcs.Npc1038Data.alias, 1065)
    end)
end

function Quest2018:OnSubFinish201807(arg1)
    print("OnSubFinish201807")
end

function Quest2018:OnSubFailed201807(arg1)
    print("OnSubFailed201807")
end

function Quest2018:OnSubStart201804(arg1)
    print("OnSubStart201804")
    self:NpcCreateWithBlackscreenInteractionDelay(arg1, npcs.Npc3053Data.id, 1, npcs.Npc3053Data.alias)
end

function Quest2018:OnSubFinish201804(arg1)
    print("OnSubFinish201804")
end

function Quest2018:OnSubFailed201804(arg1)
    print("OnSubFailed201804")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3053Data.alias, 1065)
        arg1:DestroyQuestNpcActor("Paimon", 1065)
        arg1:DestroyQuestNpcActor(npcs.Npc1038Data.alias, 1065)
    end)
end

return Quest2018
