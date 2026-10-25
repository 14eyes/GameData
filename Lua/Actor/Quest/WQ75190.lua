require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75190 = class("Quest75190", QuestActorProxy)
Quest75190.defaultAlias = "Quest75190"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75190:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75190:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7519001"] = self.OnSubStart7519001,
        ["7519002"] = self.OnSubStart7519002,
        ["7519003"] = self.OnSubStart7519003
    }
end

function Quest75190:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7519001"] = self.OnSubFinish7519001,
        ["7519002"] = self.OnSubFinish7519002,
        ["7519003"] = self.OnSubFinish7519003
    }
end

function Quest75190:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75190:Start()
    print("Start")
end

function Quest75190:OnDestroy()
    print("OnDestroy")
end

function Quest75190:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75190:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75190:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75190:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75190:OnSubStart7519001(arg1)
    print("OnSubStart7519001")
end

function Quest75190:OnSubFinish7519001(arg1)
    print("OnSubFinish7519001")
end

function Quest75190:OnSubStart7519002(arg1)
    print("OnSubStart7519002")
    this:CreateQuestNpc(arg1, npcs.Npc21806.id, 0, false, 0)
end

function Quest75190:OnSubFinish7519002(arg1)
    print("OnSubFinish7519002")
    this:SafeDestroyQuestNpc(npcs.Npc21806.alias, 101)
end

function Quest75190:OnSubStart7519003(arg1)
    print("OnSubStart7519003")
end

function Quest75190:OnSubFinish7519003(arg1)
    print("OnSubFinish7519003")
end

return Quest75190
