require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q45202Trigger = class("Q45202Trigger", GadgetActorProxy)
Q45202Trigger.defaultAlias = "Q45202Trigger"
local Q452ClientConfig = require("Quest/Client/Q452ClientConfig")

function Q45202Trigger:OnPostDataPrepare() end

function Q45202Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(50, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q45202Trigger:TriggerIn()
    print("IN Q45202Trigger")
    local actor = actorMgr:GetActor(Q452ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 45202)
    end

    self:DestroySelf()
end

function Q45202Trigger:TriggerOut() end
return Q45202Trigger
