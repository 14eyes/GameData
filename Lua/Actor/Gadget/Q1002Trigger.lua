require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1002Trigger = class("Q1002Trigger", GadgetActorProxy)
Q1002Trigger.defaultAlias = "Q1002Trigger"
local Q1002ClientConfig = require("Quest/Client/Q1002ClientConfig")

function Q1002Trigger:OnPostDataPrepare() end

function Q1002Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(60, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1002Trigger:TriggerIn() end

function Q1002Trigger:TriggerOut()
    print("Out Q1002Trigger")
    local actor = actorMgr:GetActor(Q1002ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 100204)
    end

    self:DestroySelf()
end

return Q1002Trigger
