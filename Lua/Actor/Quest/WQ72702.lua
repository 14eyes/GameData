require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72702 = class("Quest72702", QuestActorProxy)
Quest72702.defaultAlias = "Quest72702"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72702:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72702:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7270201"] = self.OnSubStart7270201}
end

function Quest72702:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7270201"] = self.OnSubFinish7270201}
end

function Quest72702:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7270201"] = self.OnSubFailed7270201}
end

function Quest72702:Start()
    print("Start")
end

function Quest72702:OnDestroy()
    print("OnDestroy")
end

function Quest72702:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72702:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72702:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72702:OnSubStart7270201(arg1)
    print("OnSubStart7270201")
end

function Quest72702:OnSubFinish7270201(arg1)
    print("OnSubFinish7270201")
end

function Quest72702:OnSubFailed7270201(arg1)
    print("OnSubFailed7270201")
end

return Quest72702
