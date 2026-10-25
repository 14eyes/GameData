require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74526 = class("Quest74526", QuestActorProxy)
Quest74526.defaultAlias = "Quest74526"
local clientData
local this
local mainID
local actorAlias

function Quest74526:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74526:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7452601"] = self.OnSubStart7452601, ["7452602"] = self.OnSubStart7452602}
end

function Quest74526:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7452601"] = self.OnSubFinish7452601, ["7452602"] = self.OnSubFinish7452602}
end

function Quest74526:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7452602"] = self.OnSubFailed7452602}
end

function Quest74526:Start()
    print("Start")
end

function Quest74526:OnDestroy()
    print("OnDestroy")
end

function Quest74526:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74526:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74526:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:BanCrowdNpc(3302, 29, nil, false, true)
    this:BanCrowdNpc(3302, 11, nil, false, true)
    this:BanCrowdNpc(3302, 27, nil, false, true)
    this:BanCrowdNpc(3302, 34, nil, false, true)
end

function Quest74526:OnMainPaused(arg1)
    print("OnMainPaused")
    this:BanCrowdNpc(3302, 29, nil, false, true)
    this:BanCrowdNpc(3302, 11, nil, false, true)
    this:BanCrowdNpc(3302, 27, nil, false, true)
    this:BanCrowdNpc(3302, 34, nil, false, true)
end

function Quest74526:OnSubStart7452601(arg1)
    print("OnSubStart7452601")
end

function Quest74526:OnSubFinish7452601(arg1)
    print("OnSubFinish7452601")
end

function Quest74526:OnSubStart7452602(arg1)
    print("OnSubStart7452602")
    this:BanCrowdNpc(3302, 29, nil, true, true)
    this:BanCrowdNpc(3302, 11, nil, true, true)
    this:BanCrowdNpc(3302, 27, nil, true, true)
    this:BanCrowdNpc(3302, 34, nil, true, true)
end

function Quest74526:OnSubFinish7452602(arg1)
    print("OnSubFinish7452602")
    this:BanCrowdNpc(3302, 29, nil, false, true)
    this:BanCrowdNpc(3302, 11, nil, false, true)
    this:BanCrowdNpc(3302, 27, nil, false, true)
    this:BanCrowdNpc(3302, 34, nil, false, true)
end

function Quest74526:OnSubFailed7452602(arg1)
    print("OnSubFailed7452602")
    this:BanCrowdNpc(3302, 29, nil, false, true)
    this:BanCrowdNpc(3302, 11, nil, false, true)
    this:BanCrowdNpc(3302, 27, nil, false, true)
    this:BanCrowdNpc(3302, 34, nil, false, true)
end

return Quest74526
