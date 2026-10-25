require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76063 = class("Quest76063", QuestActorProxy)
Quest76063.defaultAlias = "Quest76063"
local clientData
local this
local mainID
local actorAlias

function Quest76063:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76063:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7606301"] = self.OnSubStart7606301, ["7606302"] = self.OnSubStart7606302}
end

function Quest76063:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7606301"] = self.OnSubFinish7606301, ["7606302"] = self.OnSubFinish7606302}
end

function Quest76063:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76063:Start()
    print("Start")
end

function Quest76063:OnDestroy()
    print("OnDestroy")
end

function Quest76063:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76063:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76063:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76063:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76063:OnSubStart7606301(arg1)
    print("OnSubStart7606301")
end

function Quest76063:OnSubFinish7606301(arg1)
    print("OnSubFinish7606301")
end

function Quest76063:OnSubStart7606302(arg1)
    print("OnSubStart7606302")
end

function Quest76063:OnSubFinish7606302(arg1)
    print("OnSubFinish7606302")
end

return Quest76063
