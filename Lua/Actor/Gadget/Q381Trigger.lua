require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q381Trigger = class("Q381Trigger", GadgetActorProxy)
Q381Trigger.defaultAlias = "Q381Trigger"
local Q381ClientConfig = require("Quest/Client/Q381ClientConfig")

function Q381Trigger:OnPostDataPrepare() end

function Q381Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q381Trigger:TriggerIn()
    print("Out Q381Trigger")
    local actor = actorMgr:GetActor(Q381ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q381Trigger:TriggerOut() end
return Q381Trigger
