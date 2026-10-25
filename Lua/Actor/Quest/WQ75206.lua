require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75206 = class("Quest75206", QuestActorProxy)
Quest75206.defaultAlias = "Quest75206"
local clientData
local this
local mainID
local actorAlias
local points

function Quest75206:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest75206:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7520601"] = self.OnSubStart7520601,
        ["7520602"] = self.OnSubStart7520602,
        ["7520603"] = self.OnSubStart7520603
    }
end

function Quest75206:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7520601"] = self.OnSubFinish7520601,
        ["7520602"] = self.OnSubFinish7520602,
        ["7520603"] = self.OnSubFinish7520603
    }
end

function Quest75206:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75206:Start()
    print("Start")
end

function Quest75206:OnDestroy()
    print("OnDestroy")
end

function Quest75206:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75206:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75206:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75206:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7520601Trigger")
    this:ActorDestroy("Q7520602Trigger")
    this:ActorDestroy("Q7520603Trigger")
end

function Quest75206:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75206:OnSubStart7520601(arg1)
    print("OnSubStart7520601")
    actorMgr:CreateActorWithPos("Q7520601Trigger", "Actor/Gadget/Q7520601Trigger", 70900002, 0, points._Q7520601TriggerPoint_.pos, points._Q7520601TriggerPoint_.rot, true, false, 3)
end

function Quest75206:OnSubFinish7520601(arg1)
    print("OnSubFinish7520601")
end

function Quest75206:OnSubStart7520602(arg1)
    print("OnSubStart7520602")
    actorMgr:CreateActorWithPos("Q7520602Trigger", "Actor/Gadget/Q7520602Trigger", 70900002, 0, points._Q7520602TriggerPoint_.pos, points._Q7520602TriggerPoint_.rot, true, false, 3)
end

function Quest75206:OnSubFinish7520602(arg1)
    print("OnSubFinish7520602")
end

function Quest75206:OnSubStart7520603(arg1)
    print("OnSubStart7520603")
    actorMgr:CreateActorWithPos("Q7520603Trigger", "Actor/Gadget/Q7520603Trigger", 70900002, 0, points._Q7520603TriggerPoint_.pos, points._Q7520603TriggerPoint_.rot, true, false, 3)
end

function Quest75206:OnSubFinish7520603(arg1)
    print("OnSubFinish7520603")
end

return Quest75206
