require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24016 = class("Quest24016", QuestActorProxy)
Quest24016.defaultAlias = "Quest24016"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24016:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2401601"] = self.OnSubStart2401601,
        ["2401602"] = self.OnSubStart2401602,
        ["2401603"] = self.OnSubStart2401603,
        ["2401604"] = self.OnSubStart2401604
    }
end

function Quest24016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2401601"] = self.OnSubFinish2401601,
        ["2401602"] = self.OnSubFinish2401602,
        ["2401603"] = self.OnSubFinish2401603,
        ["2401604"] = self.OnSubFinish2401604
    }
end

function Quest24016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24016:Start()
    print("Start")
end

function Quest24016:OnDestroy()
    print("OnDestroy")
end

function Quest24016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24016:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5256Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2401601N5256Trigger", 3, false)
end

function Quest24016:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest24016:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24016:OnSubStart2401601(arg1)
    print("OnSubStart2401601")
    this:NpcCreateWithNpcTrigger(npcs.Npc5256Data.id, 2401601, 0, 5)
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24016:OnSubFinish2401601(arg1)
    print("OnSubFinish2401601")
end

function Quest24016:OnSubStart2401602(arg1)
    print("OnSubStart2401602")
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24016:OnSubFinish2401602(arg1)
    print("OnSubFinish2401602")
end

function Quest24016:OnSubStart2401603(arg1)
    print("OnSubStart2401603")
end

function Quest24016:OnSubFinish2401603(arg1)
    print("OnSubFinish2401603")
end

function Quest24016:OnSubStart2401604(arg1)
    print("OnSubStart2401604")
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24016:OnSubFinish2401604(arg1)
    print("OnSubFinish2401604")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5256Data.alias)
end

return Quest24016
