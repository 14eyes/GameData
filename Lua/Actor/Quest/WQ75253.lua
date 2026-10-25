require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75253 = class("Quest75253", QuestActorProxy)
Quest75253.defaultAlias = "Quest75253"
local clientData
local this
local mainID
local actorAlias

function Quest75253:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75253:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7525301"] = self.OnSubStart7525301,
        ["7525302"] = self.OnSubStart7525302,
        ["7525303"] = self.OnSubStart7525303
    }
end

function Quest75253:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7525301"] = self.OnSubFinish7525301,
        ["7525302"] = self.OnSubFinish7525302,
        ["7525303"] = self.OnSubFinish7525303
    }
end

function Quest75253:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75253:Start()
    print("Start")
end

function Quest75253:OnDestroy()
    print("OnDestroy")
end

function Quest75253:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75253:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75253:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75253:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75253:OnSubStart7525301(arg1)
    print("OnSubStart7525301")
end

function Quest75253:OnSubFinish7525301(arg1)
    print("OnSubFinish7525301")
end

function Quest75253:OnSubStart7525302(arg1)
    print("OnSubStart7525302")
end

function Quest75253:OnSubFinish7525302(arg1)
    print("OnSubFinish7525302")
end

function Quest75253:OnSubStart7525303(arg1)
    print("OnSubStart7525303")
end

function Quest75253:OnSubFinish7525303(arg1)
    print("OnSubFinish7525303")
end

return Quest75253
