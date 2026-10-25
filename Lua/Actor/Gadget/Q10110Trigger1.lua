require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10110Trigger1 = class("Q10110Trigger1", GadgetActorProxy)
Q10110Trigger1.defaultAlias = "Q10110Trigger1"
local Q10110ClientConfig = require("Quest/Client/Q10110ClientConfig")

function Q10110Trigger1:OnPostDataPrepare() end

function Q10110Trigger1:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q10110Trigger1:TriggerIn()
    print("In Q10110Trigger1")
    actorMgr:GetActor(Q10110ClientConfig.ActorAlias):RequestInteraction("Npc160101")
    self:DestroySelf()
end

function Q10110Trigger1:TriggerOut()
    print("Out Q10110Trigger1")
end

return Q10110Trigger1
