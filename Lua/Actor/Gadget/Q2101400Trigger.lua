require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2101400Trigger = class("Q2101400Trigger", GadgetActorProxy)
Q2101400Trigger.defaultAlias = "Q2101400Trigger"
local Q21014ClientConfig = require("Quest/Client/Q21014ClientConfig")

function Q2101400Trigger:OnPostDataPrepare() end

function Q2101400Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q2101400Trigger:TriggerIn()
    print("IN Q2101400Trigger")
    local actor = actorMgr:GetActor(Q21014ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2101400)
    end

    self:DestroySelf()
end

function Q2101400Trigger:TriggerOut() end
return Q2101400Trigger
