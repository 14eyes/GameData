require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76144 = class("Quest76144", QuestActorProxy)
Quest76144.defaultAlias = "Quest76144"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest76144:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest76144:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7614401"] = self.OnSubStart7614401}
end

function Quest76144:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7614401"] = self.OnSubFinish7614401}
end

function Quest76144:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7614401"] = self.OnSubFailed7614401}
end

function Quest76144:Start()
    print("Start")
end

function Quest76144:OnDestroy()
    print("OnDestroy")
end

function Quest76144:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76144:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76144:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76144:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7614401Trigger")
end

function Quest76144:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76144:OnSubStart7614401(arg1)
    print("OnSubStart7614401")
    actorMgr:CreateActorWithPos("Q7614401Trigger", "Actor/Gadget/Q7614401Trigger", 70900002, 0, points._Q7614401TriggerPoint_.pos, points._Q7614401TriggerPoint_.rot, true, false, 3)
end

function Quest76144:OnSubFinish7614401(arg1)
    print("OnSubFinish7614401")
end

function Quest76144:OnSubFailed7614401(arg1)
    print("OnSubFailed7614401")
    this:ActorDestroy("Q7614401Trigger")
end

return Quest76144
