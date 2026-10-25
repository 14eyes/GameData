require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q353Trigger2 = class("Q353Trigger2", GadgetActorProxy)
Q353Trigger2.defaultAlias = "Q353Trigger2"
local Q353ClientConfig = require("Quest/Client/Q353ClientConfig")

function Q353Trigger2:OnPostDataPrepare() end

function Q353Trigger2:OnPostComponentPrepare()
    self:AddComponentTrigger(25, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q353Trigger2:TriggerIn() end

function Q353Trigger2:TriggerOut()
    print("Out Q353Trigger2")
end

return Q353Trigger2
