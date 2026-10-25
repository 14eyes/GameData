require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13033 = class("Quest13033", QuestActorProxy)
Quest13033.defaultAlias = "Quest13033"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest13033:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest13033:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1303301"] = self.OnSubStart1303301}
end

function Quest13033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1303301"] = self.OnSubFinish1303301}
end

function Quest13033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13033:Start()
    print("Start")
end

function Quest13033:OnDestroy()
    print("OnDestroy")
end

function Quest13033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13033:OnSubStart1303301(arg1)
    print("OnSubStart1303301")
end

function Quest13033:OnSubFinish1303301(arg1)
    print("OnSubFinish1303301")
end

return Quest13033
