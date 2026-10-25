require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76061 = class("Quest76061", QuestActorProxy)
Quest76061.defaultAlias = "Quest76061"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76061:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76061:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7606101"] = self.OnSubStart7606101,
        ["7606102"] = self.OnSubStart7606102,
        ["7606103"] = self.OnSubStart7606103
    }
end

function Quest76061:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7606101"] = self.OnSubFinish7606101,
        ["7606102"] = self.OnSubFinish7606102,
        ["7606103"] = self.OnSubFinish7606103
    }
end

function Quest76061:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76061:Start()
    print("Start")
end

function Quest76061:OnDestroy()
    print("OnDestroy")
end

function Quest76061:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76061:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76061:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76061:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76061:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76061:OnSubStart7606101(arg1)
    print("OnSubStart7606101")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 0, 7606101)
end

function Quest76061:OnSubFinish7606101(arg1)
    print("OnSubFinish7606101")
end

function Quest76061:OnSubStart7606102(arg1)
    print("OnSubStart7606102")
end

function Quest76061:OnSubFinish7606102(arg1)
    print("OnSubFinish7606102")
end

function Quest76061:OnSubStart7606103(arg1)
    print("OnSubStart7606103")
end

function Quest76061:OnSubFinish7606103(arg1)
    print("OnSubFinish7606103")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
end

return Quest76061
