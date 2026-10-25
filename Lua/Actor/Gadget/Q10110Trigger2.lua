require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10110Trigger2 = class("Q10110Trigger2", GadgetActorProxy)
Q10110Trigger2.defaultAlias = "Q10110Trigger2"
local Q10110ClientConfig = require("Quest/Client/Q10110ClientConfig")

function Q10110Trigger2:OnPostDataPrepare() end

function Q10110Trigger2:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q10110Trigger2:TriggerIn()
    print("In Q10110Trigger2")
    actorMgr:GetActor(Q10110ClientConfig.ActorAlias):RequestInteractionForceAlias("Npc1567")
    self:DestroySelf()
end

function Q10110Trigger2:TriggerOut()
    print("Out Q10110Trigger2")
end

return Q10110Trigger2
