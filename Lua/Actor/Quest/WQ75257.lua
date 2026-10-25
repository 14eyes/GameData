require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75257 = class("Quest75257", QuestActorProxy)
Quest75257.defaultAlias = "Quest75257"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75257:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75257:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7525701"] = self.OnSubStart7525701,
        ["7525702"] = self.OnSubStart7525702,
        ["7525703"] = self.OnSubStart7525703,
        ["7525704"] = self.OnSubStart7525704,
        ["7525705"] = self.OnSubStart7525705,
        ["7525706"] = self.OnSubStart7525706,
        ["7525707"] = self.OnSubStart7525707
    }
end

function Quest75257:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7525701"] = self.OnSubFinish7525701,
        ["7525702"] = self.OnSubFinish7525702,
        ["7525703"] = self.OnSubFinish7525703,
        ["7525704"] = self.OnSubFinish7525704,
        ["7525705"] = self.OnSubFinish7525705,
        ["7525706"] = self.OnSubFinish7525706,
        ["7525707"] = self.OnSubFinish7525707
    }
end

function Quest75257:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7525702"] = self.OnSubFailed7525702,
        ["7525704"] = self.OnSubFailed7525704,
        ["7525706"] = self.OnSubFailed7525706
    }
end

function Quest75257:Start()
    print("Start")
end

function Quest75257:OnDestroy()
    print("OnDestroy")
end

function Quest75257:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75257:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75257:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75257:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75257:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75257:OnSubStart7525701(arg1)
    print("OnSubStart7525701")
    this:CreateQuestNpc(arg1, npcs.Npc6556.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22023.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22024.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22025.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22025.alias, 75257):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75257:OnSubFinish7525701(arg1)
    print("OnSubFinish7525701")
end

function Quest75257:OnSubStart7525702(arg1)
    print("OnSubStart7525702")
    this:CreateQuestNpc(arg1, npcs.Npc6556.id, 0, false, 0)
    this:DeployStoryByQuest(147525704)
end

function Quest75257:OnSubFinish7525702(arg1)
    print("OnSubFinish7525702")
end

function Quest75257:OnSubFailed7525702(arg1)
    print("OnSubFailed7525702")
    this:CancelStoryByQuest(147525704)
end

function Quest75257:OnSubStart7525703(arg1)
    print("OnSubStart7525703")
    this:CancelStoryByQuest(147525704)
    this:CreateQuestNpc(arg1, npcs.Npc6556.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22024.id, 0, false, 0)
end

function Quest75257:OnSubFinish7525703(arg1)
    print("OnSubFinish7525703")
end

function Quest75257:OnSubStart7525704(arg1)
    print("OnSubStart7525704")
    this:CreateQuestNpc(arg1, npcs.Npc6556.id, 0, false, 0)
    this:DeployStoryByQuest(147525704)
end

function Quest75257:OnSubFinish7525704(arg1)
    print("OnSubFinish7525704")
end

function Quest75257:OnSubFailed7525704(arg1)
    print("OnSubFailed7525704")
    this:CancelStoryByQuest(147525704)
end

function Quest75257:OnSubStart7525705(arg1)
    print("OnSubStart7525705")
    this:CancelStoryByQuest(147525704)
    this:CreateQuestNpc(arg1, npcs.Npc6556.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22025.id, 0, false, 0)
end

function Quest75257:OnSubFinish7525705(arg1)
    print("OnSubFinish7525705")
end

function Quest75257:OnSubStart7525706(arg1)
    print("OnSubStart7525706")
    this:CreateQuestNpc(arg1, npcs.Npc6556.id, 0, false, 0)
    this:DeployStoryByQuest(147525704)
end

function Quest75257:OnSubFinish7525706(arg1)
    print("OnSubFinish7525706")
end

function Quest75257:OnSubFailed7525706(arg1)
    print("OnSubFailed7525706")
    this:CancelStoryByQuest(147525704)
end

function Quest75257:OnSubStart7525707(arg1)
    print("OnSubStart7525707")
    this:NpcCreateWithNpcTrigger(npcs.Npc6556.id, 0, 5, 7525707)
end

function Quest75257:OnSubFinish7525707(arg1)
    print("OnSubFinish7525707")
    this:SafeDestroyQuestNpc(npcs.Npc6556.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22023.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22024.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22025.alias, 3)
    this:CancelStoryByQuest(147525704)
end

return Quest75257
