require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24019 = class("Quest24019", QuestActorProxy)
Quest24019.defaultAlias = "Quest24019"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24019:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2401901"] = self.OnSubStart2401901,
        ["2401902"] = self.OnSubStart2401902,
        ["2401903"] = self.OnSubStart2401903
    }
end

function Quest24019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2401901"] = self.OnSubFinish2401901,
        ["2401902"] = self.OnSubFinish2401902,
        ["2401903"] = self.OnSubFinish2401903
    }
end

function Quest24019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24019:Start()
    print("Start")
end

function Quest24019:OnDestroy()
    print("OnDestroy")
end

function Quest24019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24019:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5084Data.alias, 3)
end

function Quest24019:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest24019:OnSubStart2401901(arg1)
    print("OnSubStart2401901")
    this:CreateQuestNpc(arg1, npcs.Npc5084Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
end

function Quest24019:OnSubFinish2401901(arg1)
    print("OnSubFinish2401901")
end

function Quest24019:OnSubStart2401902(arg1)
    print("OnSubStart2401902")
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
end

function Quest24019:OnSubFinish2401902(arg1)
    print("OnSubFinish2401902")
end

function Quest24019:OnSubStart2401903(arg1)
    print("OnSubStart2401903")
    this:NpcCreateWithNpcTrigger(npcs.Npc5084Data.id, 2401903, 1, 10)
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest24019:OnSubFinish2401903(arg1)
    print("OnSubFinish2401903")
    this:SafeDestroyQuestNpc(npcs.Npc5084Data.alias, 3)
end

return Quest24019
