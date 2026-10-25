require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10110Trigger3 = class("Q10110Trigger3", GadgetActorProxy)
Q10110Trigger3.defaultAlias = "Q10110Trigger3"
local Q10110ClientConfig = require("Quest/Client/Q10110ClientConfig")

function Q10110Trigger3:OnPostDataPrepare() end

function Q10110Trigger3:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q10110Trigger3:TriggerIn()
    print("In Q10110Trigger3")
    actorMgr:GetActor(Q10110ClientConfig.ActorAlias):RequestInteraction("Gaia")
    self:DestroySelf()
end

function Q10110Trigger3:TriggerOut()
    print("Out Q10110Trigger3")
end

return Q10110Trigger3
