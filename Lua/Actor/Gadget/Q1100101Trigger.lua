require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1100101Trigger = class("Q1100101Trigger", GadgetActorProxy)
Q1100101Trigger.defaultAlias = "Q1100101Trigger"
local Q11001ClientConfig = require("Quest/Client/Q11001ClientConfig")

function Q1100101Trigger:OnPostDataPrepare() end

function Q1100101Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(7, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100101Trigger:TriggerIn()
    print("IN Q1100101Trigger")
    local actor = actorMgr:GetActor(Q11001ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1100101)
    end

    self:DestroySelf()
end

function Q1100101Trigger:TriggerOut() end
return Q1100101Trigger
