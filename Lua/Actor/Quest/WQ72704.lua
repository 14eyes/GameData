require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72704 = class("Quest72704", QuestActorProxy)
Quest72704.defaultAlias = "Quest72704"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72704:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72704:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7270401"] = self.OnSubStart7270401}
end

function Quest72704:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7270401"] = self.OnSubFinish7270401}
end

function Quest72704:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7270401"] = self.OnSubFailed7270401}
end

function Quest72704:Start()
    print("Start")
end

function Quest72704:OnDestroy()
    print("OnDestroy")
end

function Quest72704:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72704:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72704:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72704:OnSubStart7270401(arg1)
    print("OnSubStart7270401")
end

function Quest72704:OnSubFinish7270401(arg1)
    print("OnSubFinish7270401")
end

function Quest72704:OnSubFailed7270401(arg1)
    print("OnSubFailed7270401")
end

return Quest72704
