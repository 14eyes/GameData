require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75953 = class("Quest75953", QuestActorProxy)
Quest75953.defaultAlias = "Quest75953"
local clientData
local this
local mainID
local actorAlias

function Quest75953:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75953:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7595301"] = self.OnSubStart7595301,
        ["7595302"] = self.OnSubStart7595302,
        ["7595303"] = self.OnSubStart7595303
    }
end

function Quest75953:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7595301"] = self.OnSubFinish7595301,
        ["7595302"] = self.OnSubFinish7595302,
        ["7595303"] = self.OnSubFinish7595303
    }
end

function Quest75953:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75953:Start()
    print("Start")
end

function Quest75953:OnDestroy()
    print("OnDestroy")
end

function Quest75953:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75953:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75953:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75953:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75953:OnSubStart7595301(arg1)
    print("OnSubStart7595301")
end

function Quest75953:OnSubFinish7595301(arg1)
    print("OnSubFinish7595301")
end

function Quest75953:OnSubStart7595302(arg1)
    print("OnSubStart7595302")
end

function Quest75953:OnSubFinish7595302(arg1)
    print("OnSubFinish7595302")
end

function Quest75953:OnSubStart7595303(arg1)
    print("OnSubStart7595303")
end

function Quest75953:OnSubFinish7595303(arg1)
    print("OnSubFinish7595303")
end

return Quest75953
