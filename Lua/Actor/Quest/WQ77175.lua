require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77175 = class("Quest77175", QuestActorProxy)
Quest77175.defaultAlias = "Quest77175"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77175:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77175:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7717501"] = self.OnSubStart7717501,
        ["7717502"] = self.OnSubStart7717502,
        ["7717504"] = self.OnSubStart7717504,
        ["7717503"] = self.OnSubStart7717503
    }
end

function Quest77175:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7717501"] = self.OnSubFinish7717501,
        ["7717502"] = self.OnSubFinish7717502,
        ["7717504"] = self.OnSubFinish7717504,
        ["7717503"] = self.OnSubFinish7717503
    }
end

function Quest77175:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77175:Start()
    print("Start")
end

function Quest77175:OnDestroy()
    print("OnDestroy")
end

function Quest77175:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77175:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77175:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77175:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77175:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77175:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77175:OnSubStart7717501(arg1)
    print("OnSubStart7717501")
end

function Quest77175:OnSubFinish7717501(arg1)
    print("OnSubFinish7717501")
end

function Quest77175:OnSubStart7717502(arg1)
    print("OnSubStart7717502")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7717502, 0, 30, 2, npcs.Npc17333_1.id)
end

function Quest77175:OnSubFinish7717502(arg1)
    print("OnSubFinish7717502")
    this:NpcDestroyImmediately(1159, npcs.Npc17333_1.alias)
end

function Quest77175:OnSubStart7717504(arg1)
    print("OnSubStart7717504")
end

function Quest77175:OnSubFinish7717504(arg1)
    print("OnSubFinish7717504")
end

function Quest77175:OnSubStart7717503(arg1)
    print("OnSubStart7717503")
end

function Quest77175:OnSubFinish7717503(arg1)
    print("OnSubFinish7717503")
end

return Quest77175
