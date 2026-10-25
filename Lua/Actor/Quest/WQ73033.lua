require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73033 = class("Quest73033", QuestActorProxy)
Quest73033.defaultAlias = "Quest73033"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73033:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73033:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7303302"] = self.OnSubStart7303302, ["7303301"] = self.OnSubStart7303301}
end

function Quest73033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7303302"] = self.OnSubFinish7303302, ["7303301"] = self.OnSubFinish7303301}
end

function Quest73033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73033:Start()
    print("Start")
end

function Quest73033:OnDestroy()
    print("OnDestroy")
end

function Quest73033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73033:OnSubStart7303302(arg1)
    print("OnSubStart7303302")
end

function Quest73033:OnSubFinish7303302(arg1)
    print("OnSubFinish7303302")
end

function Quest73033:OnSubStart7303301(arg1)
    print("OnSubStart7303301")
end

function Quest73033:OnSubFinish7303301(arg1)
    print("OnSubFinish7303301")
end

return Quest73033
