require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73020 = class("Quest73020", QuestActorProxy)
Quest73020.defaultAlias = "Quest73020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7302001"] = self.OnSubStart7302001,
        ["7302002"] = self.OnSubStart7302002,
        ["7302006"] = self.OnSubStart7302006,
        ["7302003"] = self.OnSubStart7302003,
        ["7302009"] = self.OnSubStart7302009,
        ["7302008"] = self.OnSubStart7302008,
        ["7302004"] = self.OnSubStart7302004,
        ["7302005"] = self.OnSubStart7302005,
        ["7302007"] = self.OnSubStart7302007,
        ["7302010"] = self.OnSubStart7302010
    }
end

function Quest73020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7302001"] = self.OnSubFinish7302001,
        ["7302002"] = self.OnSubFinish7302002,
        ["7302006"] = self.OnSubFinish7302006,
        ["7302003"] = self.OnSubFinish7302003,
        ["7302009"] = self.OnSubFinish7302009,
        ["7302008"] = self.OnSubFinish7302008,
        ["7302004"] = self.OnSubFinish7302004,
        ["7302005"] = self.OnSubFinish7302005,
        ["7302007"] = self.OnSubFinish7302007,
        ["7302010"] = self.OnSubFinish7302010
    }
end

function Quest73020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73020:Start()
    print("Start")
end

function Quest73020:OnDestroy()
    print("OnDestroy")
end

function Quest73020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73020:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73020:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73020:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73020:OnSubStart7302001(arg1)
    print("OnSubStart7302001")
    self:CreateQuestNpc(arg1, npcs.Npc20650Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20650Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q73020Trigger_7302001", "Actor/Gadget/Q73020Trigger_7302001", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302001_N4192").pos, sceneData:GetDummyPoint(3, "Q7302001_N4192").rot, true, false, 3)
end

function Quest73020:OnSubFinish7302001(arg1)
    print("OnSubFinish7302001")
    self:NarratorOnlyTask(datas.Reminder_7302002, nil, "")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7302001_N4192").pos, 0, 2, true, false)
end

function Quest73020:OnSubStart7302002(arg1)
    print("OnSubStart7302002")
end

function Quest73020:OnSubFinish7302002(arg1)
    print("OnSubFinish7302002")
end

function Quest73020:OnSubStart7302006(arg1)
    print("OnSubStart7302006")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20650Data.id, 1)
    actorMgr:CreateActorWithPos("Q73020Trigger_7302006", "Actor/Gadget/Q73020Trigger_7302006", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302001_N4192").pos, sceneData:GetDummyPoint(3, "Q7302001_N4192").rot, true, false, 3)
end

function Quest73020:OnSubFinish7302006(arg1)
    print("OnSubFinish7302006")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20650Data.alias)
end

function Quest73020:OnSubStart7302003(arg1)
    print("OnSubStart7302003")
    actorMgr:CreateActorWithPos("Q73020Trigger_7302003", "Actor/Gadget/Q73020Trigger_7302003", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302003_guide").pos, sceneData:GetDummyPoint(3, "Q7302003_guide").rot, true, false, 3)
end

function Quest73020:OnSubFinish7302003(arg1)
    print("OnSubFinish7302003")
end

function Quest73020:OnSubStart7302009(arg1)
    print("OnSubStart7302009")
    actorMgr:CreateActorWithPos("Q73020Trigger_7302009", "Actor/Gadget/Q73020Trigger_7302009", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302009_guide").pos, sceneData:GetDummyPoint(3, "Q7302009_guide").rot, true, false, 3)
end

function Quest73020:OnSubFinish7302009(arg1)
    print("OnSubFinish7302009")
end

function Quest73020:OnSubStart7302008(arg1)
    print("OnSubStart7302008")
    actorMgr:CreateActorWithPos("Q73020Trigger_7302008", "Actor/Gadget/Q73020Trigger_7302008", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302008_guide").pos, sceneData:GetDummyPoint(3, "Q7302008_guide").rot, true, false, 3)
end

function Quest73020:OnSubFinish7302008(arg1)
    print("OnSubFinish7302008")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7302004_N20733").pos, 1, 3, true, false)
end

function Quest73020:OnSubStart7302004(arg1)
    print("OnSubStart7302004")
    self:CreateQuestNpc(arg1, npcs.Npc20733Data.id, 1)
end

function Quest73020:OnSubFinish7302004(arg1)
    print("OnSubFinish7302004")
end

function Quest73020:OnSubStart7302005(arg1)
    print("OnSubStart7302005")
end

function Quest73020:OnSubFinish7302005(arg1)
    print("OnSubFinish7302005")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20650Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20733Data.alias, 3)
    self:NarratorOnlyTask(datas.Reminder_7302007, nil, "")
end

function Quest73020:OnSubStart7302007(arg1)
    print("OnSubStart7302007")
    actorMgr:CreateActorWithPos("Q73020Trigger_7302007", "Actor/Gadget/Q73020Trigger_7302007", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302010_N20650").pos, sceneData:GetDummyPoint(3, "Q7302010_N20650").rot, true, false, 3)
end

function Quest73020:OnSubFinish7302007(arg1)
    print("OnSubFinish7302007")
end

function Quest73020:OnSubStart7302010(arg1)
    print("OnSubStart7302010")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20650Data.id, 1, npcs.Npc20650Data.alias)
end

function Quest73020:OnSubFinish7302010(arg1)
    print("OnSubFinish7302010")
end

return Quest73020
