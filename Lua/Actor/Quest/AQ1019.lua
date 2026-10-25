require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1019 = class("Quest1019", QuestActorProxy)
Quest1019.defaultAlias = "Quest1019"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest1019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest1019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["101906"] = self.OnSubStart101906,
        ["101907"] = self.OnSubStart101907,
        ["101901"] = self.OnSubStart101901,
        ["101902"] = self.OnSubStart101902,
        ["101903"] = self.OnSubStart101903,
        ["101904"] = self.OnSubStart101904,
        ["101905"] = self.OnSubStart101905
    }
end

function Quest1019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["101906"] = self.OnSubFinish101906,
        ["101907"] = self.OnSubFinish101907,
        ["101901"] = self.OnSubFinish101901,
        ["101902"] = self.OnSubFinish101902,
        ["101903"] = self.OnSubFinish101903,
        ["101904"] = self.OnSubFinish101904,
        ["101905"] = self.OnSubFinish101905
    }
end

function Quest1019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest1019:Start()
    print("Start")
end

function Quest1019:OnDestroy()
    print("OnDestroy")
end

function Quest1019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest1019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest1019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest1019:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest1019:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest1019:OnSubStart101906(arg1)
    print("OnSubStart101906")
end

function Quest1019:OnSubFinish101906(arg1)
    print("OnSubFinish101906")
end

function Quest1019:OnSubStart101907(arg1)
    print("OnSubStart101907")
end

function Quest1019:OnSubFinish101907(arg1)
    print("OnSubFinish101907")
    self:NarratorOnlyTaskByData(datas.StartKaiche, nil, 1019)
end

function Quest1019:OnSubStart101901(arg1)
    print("OnSubStart101901")
    actorMgr:CreateActorWithPos("Q1019Trigger1", "Actor/Gadget/Q1019Trigger1", 70900002, 0, sceneData:GetDummyPoint(6, "guide_Q101901").pos, sceneData:GetDummyPoint(6, "guide_Q101901").rot, true, false, 6)
    actorMgr:CreateActorWithPos("Q1019Trigger3", "Actor/Gadget/Q1019Trigger3", 70900002, 0, {x = 487.841, y = 92.024, z = 1231.208}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 6)
    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
end

function Quest1019:OnSubFinish101901(arg1)
    print("OnSubFinish101901")
end

function Quest1019:OnSubStart101902(arg1)
    print("OnSubStart101902")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1030Data.id, 1, npcs.Npc1030Data.alias)
    self:TryPauseCurAutoNarrator()
    self:ClearNarratorTask()
end

function Quest1019:OnSubFinish101902(arg1)
    print("OnSubFinish101902")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1030Data.alias, 6)
    end)
end

function Quest1019:OnSubStart101903(arg1)
    print("OnSubStart101903")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1030Data.id, 1)
    actorMgr:CreateActorWithPos("Q1019Trigger", "Actor/Gadget/Q1019Trigger", 70900002, 0, sceneData:GetDummyPoint(6, "Q101903_N1030_guide").pos, sceneData:GetDummyPoint(6, "Q101903_N1030_guide").rot, true, false, 6)
end

function Quest1019:OnSubFinish101903(arg1)
    print("OnSubFinish101903")
    self:DestroyQuestNpcActor(npcs.Npc1030Data.alias, 6)
    self:TransmitPlayerWithTextById(arg1, 1, nil, 1)
end

function Quest1019:OnSubStart101904(arg1)
    print("OnSubStart101904")
    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
    actorMgr:CreateActorWithPos("Q1019Trigger4", "Actor/Gadget/Q1019Trigger4", 70900002, 0, {x = -2.954, y = 5.892, z = -53.576}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20130)
end

function Quest1019:OnSubFinish101904(arg1)
    print("OnSubFinish101904")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1030Data.alias, 20130)
    end)
end

function Quest1019:OnSubStart101905(arg1)
    print("OnSubStart101905")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
    end)

    actorMgr:CreateActorWithPos("Q1019Trigger2", "Actor/Gadget/Q1019Trigger2", 70900002, 0, {x = 8.798, y = 2.343, z = -22.863}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20130)
end

function Quest1019:OnSubFinish101905(arg1)
    print("OnSubFinish101905")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1048Data.alias, 20130)
        arg1:DestroyQuestNpcActor(npcs.Npc1030Data.alias, 20130)
    end)
end

return Quest1019
