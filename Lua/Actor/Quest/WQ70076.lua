require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70076 = class("Quest70076", QuestActorProxy)
Quest70076.defaultAlias = "Quest70076"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest70076:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest70076:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7007601"] = self.OnSubStart7007601, ["7007602"] = self.OnSubStart7007602}
end

function Quest70076:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7007601"] = self.OnSubFinish7007601, ["7007602"] = self.OnSubFinish7007602}
end

function Quest70076:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70076:Start()
    print("Start")
end

function Quest70076:OnDestroy()
    print("OnDestroy")
end

function Quest70076:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70076:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70076:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70076:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7007601Trigger", nil)
    this:ActorDestroy("Q7007602Trigger", nil)
end

function Quest70076:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest70076:OnSubStart7007601(arg1)
    print("OnSubStart7007601")
    actorMgr:CreateActorWithPos("Q7007601Trigger", "Actor/Gadget/Q7007601Trigger", 70900002, 0, points._Q7007601TriggerPoint_.pos, points._Q7007601TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70076:OnSubFinish7007601(arg1)
    print("OnSubFinish7007601")
end

function Quest70076:OnSubStart7007602(arg1)
    print("OnSubStart7007602")
    actorMgr:CreateActorWithPos("Q7007602Trigger", "Actor/Gadget/Q7007602Trigger", 70900002, 0, points.Q7007602Trigger.pos, points.Q7007602Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest70076:OnSubFinish7007602(arg1)
    print("OnSubFinish7007602")
    this:SetNavigationByMainId(70067, true)
end

return Quest70076
