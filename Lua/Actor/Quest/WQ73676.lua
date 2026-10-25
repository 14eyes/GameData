require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73676 = class("Quest73676", QuestActorProxy)
Quest73676.defaultAlias = "Quest73676"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73676:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73676:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7367601"] = self.OnSubStart7367601,
        ["7367602"] = self.OnSubStart7367602,
        ["7367603"] = self.OnSubStart7367603,
        ["7367605"] = self.OnSubStart7367605,
        ["7367604"] = self.OnSubStart7367604
    }
end

function Quest73676:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7367601"] = self.OnSubFinish7367601,
        ["7367602"] = self.OnSubFinish7367602,
        ["7367603"] = self.OnSubFinish7367603,
        ["7367605"] = self.OnSubFinish7367605,
        ["7367604"] = self.OnSubFinish7367604
    }
end

function Quest73676:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7367602"] = self.OnSubFailed7367602}
end

function Quest73676:Start()
    print("Start")
end

function Quest73676:OnDestroy()
    print("OnDestroy")
end

function Quest73676:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73676:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73676:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc12760Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12761Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12762Data.alias, 3)
    actorMgr:DestroyEntityActor("Q73676Trigger", 3, false)
end

function Quest73676:OnSubStart7367601(arg1)
    print("OnSubStart7367601")
    self:CreateQuestNpc(arg1, npcs.Npc12760Data.id, 1)
end

function Quest73676:OnSubFinish7367601(arg1)
    print("OnSubFinish7367601")
    self:SafeDestroyQuestNpc(npcs.Npc12760Data.alias, 3)
end

function Quest73676:OnSubStart7367602(arg1)
    print("OnSubStart7367602")
    actorMgr:CreateActorWithPos("Q73676Trigger", "Actor/Gadget/Q73676Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7367603_guide").pos, sceneData:GetDummyPoint(3, "Q7367603_guide").rot, true, false, 3)
end

function Quest73676:OnSubFinish7367602(arg1)
    print("OnSubFinish7367602")
    self:SafeDestroyQuestNpc(npcs.Npc12760Data.alias, 3)
end

function Quest73676:OnSubFailed7367602(arg1)
    print("OnSubFailed7367602")
    self:NarratorOnlyTaskByData(datas.FightingKaiche)
    self:DestroyQuestNpcActor(npcs.Npc12760Data.alias, 3)
end

function Quest73676:OnSubStart7367603(arg1)
    print("OnSubStart7367603")
end

function Quest73676:OnSubFinish7367603(arg1)
    print("OnSubFinish7367603")
    self:NarratorOnlyTaskByData(datas.FightingKaiche)
end

function Quest73676:OnSubStart7367605(arg1)
    print("OnSubStart7367605")
end

function Quest73676:OnSubFinish7367605(arg1)
    print("OnSubFinish7367605")
end

function Quest73676:OnSubStart7367604(arg1)
    print("OnSubStart7367604")
    actorMgr:CreateActorWithPos("Q73676Trigger1", "Actor/Gadget/Q73676Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q7367602_guide_Q7367604_N12760").pos, sceneData:GetDummyPoint(3, "Q7367602_guide_Q7367604_N12760").rot, true, false, 3)
end

function Quest73676:OnSubFinish7367604(arg1)
    print("OnSubFinish7367604")
    self:SafeDestroyQuestNpc(npcs.Npc12760Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12761Data.alias, 3)
end

return Quest73676
