require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74524 = class("Quest74524", QuestActorProxy)
Quest74524.defaultAlias = "Quest74524"
local clientData
local this
local mainID
local actorAlias

function Quest74524:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74524:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7452401"] = self.OnSubStart7452401, ["7452402"] = self.OnSubStart7452402}
end

function Quest74524:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7452401"] = self.OnSubFinish7452401, ["7452402"] = self.OnSubFinish7452402}
end

function Quest74524:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7452402"] = self.OnSubFailed7452402}
end

function Quest74524:Start()
    print("Start")
end

function Quest74524:OnDestroy()
    print("OnDestroy")
end

function Quest74524:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74524:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74524:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:BanCrowdNpc(3221, 7, nil, false, true)
end

function Quest74524:OnMainPaused(arg1)
    print("OnMainPaused")
    this:BanCrowdNpc(3221, 7, nil, false, true)
end

function Quest74524:OnSubStart7452401(arg1)
    print("OnSubStart7452401")
end

function Quest74524:OnSubFinish7452401(arg1)
    print("OnSubFinish7452401")
end

function Quest74524:OnSubStart7452402(arg1)
    print("OnSubStart7452402")
    this:BanCrowdNpc(3221, 7, nil, true, true)
end

function Quest74524:OnSubFinish7452402(arg1)
    print("OnSubFinish7452402")
    this:BanCrowdNpc(3221, 7, nil, false, true)
end

function Quest74524:OnSubFailed7452402(arg1)
    print("OnSubFailed7452402")
    this:BanCrowdNpc(3221, 7, nil, false, true)
end

return Quest74524
