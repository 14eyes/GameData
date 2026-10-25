require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25020 = class("Quest25020", QuestActorProxy)
Quest25020.defaultAlias = "Quest25020"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest25020:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest25020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2502001"] = self.OnSubStart2502001,
        ["2502002"] = self.OnSubStart2502002,
        ["2502006"] = self.OnSubStart2502006,
        ["2502004"] = self.OnSubStart2502004,
        ["2502005"] = self.OnSubStart2502005,
        ["2502003"] = self.OnSubStart2502003
    }
end

function Quest25020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2502001"] = self.OnSubFinish2502001,
        ["2502002"] = self.OnSubFinish2502002,
        ["2502006"] = self.OnSubFinish2502006,
        ["2502004"] = self.OnSubFinish2502004,
        ["2502005"] = self.OnSubFinish2502005,
        ["2502003"] = self.OnSubFinish2502003
    }
end

function Quest25020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25020:Start()
    print("Start")
end

function Quest25020:OnDestroy()
    print("OnDestroy")
end

function Quest25020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25020:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14267.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14268.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14378.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14379.alias, 3)
    this:DestroyNpcTrigger("Q2502001N14267Trigger")
    this:DestroyNpcTrigger("Q2502003N14267Trigger")
    this:CancelStoryByQuest(152502001)
end

function Quest25020:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest25020:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest25020:OnSubStart2502001(arg1)
    print("OnSubStart2502001")
    this:NpcCreateWithNpcTrigger(npcs.Npc14267.id, 0, 7, 2502001)
    this:CreateQuestNpc(arg1, npcs.Npc14268.id, 0, false, 0)
end

function Quest25020:OnSubFinish2502001(arg1)
    print("OnSubFinish2502001")
end

function Quest25020:OnSubStart2502002(arg1)
    print("OnSubStart2502002")
    this:CreateQuestNpc(arg1, npcs.Npc14267.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14267.alias, 25020):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14268.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14378.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14267.alias, 25020):DisableInteeHeadCtrl(true)
end

function Quest25020:OnSubFinish2502002(arg1)
    print("OnSubFinish2502002")
    this:SafeDestroyQuestNpc(npcs.Npc14378.alias, 3)
end

function Quest25020:OnSubStart2502006(arg1)
    print("OnSubStart2502006")
    this:GetQuestNpcActor(npcs.Npc14267.alias, 25020):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14267.alias, 25020):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14267.alias, 25020):DoFreeStateTrigger()
end

function Quest25020:OnSubFinish2502006(arg1)
    print("OnSubFinish2502006")
end

function Quest25020:OnSubStart2502004(arg1)
    print("OnSubStart2502004")
    this:CreateQuestNpc(arg1, npcs.Npc14267.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14379.id, 0, false, 0)
end

function Quest25020:OnSubFinish2502004(arg1)
    print("OnSubFinish2502004")
    this:SafeDestroyQuestNpc(npcs.Npc14379.alias, 3)
end

function Quest25020:OnSubStart2502005(arg1)
    print("OnSubStart2502005")
    this:CreateQuestNpc(arg1, npcs.Npc14267.id, 0, false, 0)
    this:DeployStoryByQuest(152502001)
    this:GetQuestNpcActor(npcs.Npc14267.alias, 25020):DisableInteeHeadCtrl(true)
end

function Quest25020:OnSubFinish2502005(arg1)
    print("OnSubFinish2502005")
    this:CancelStoryByQuest(152502001)
end

function Quest25020:OnSubStart2502003(arg1)
    print("OnSubStart2502003")
    this:NpcCreateWithNpcTrigger(npcs.Npc14267.id, 0, 18, 2502003)
end

function Quest25020:OnSubFinish2502003(arg1)
    print("OnSubFinish2502003")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14267.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14268.alias)
end

return Quest25020
