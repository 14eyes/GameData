require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10112Trigger4 = class("Q10112Trigger4", GadgetActorProxy)
Q10112Trigger4.defaultAlias = "Q10112Trigger4"
local Q10112ClientConfig = require("Quest/Client/Q10112ClientConfig")

function Q10112Trigger4:OnPostDataPrepare() end

function Q10112Trigger4:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q10112Trigger4:TriggerIn()
    print("In Q10112Trigger4")
    actorMgr:GetActor(Q10112ClientConfig.ActorAlias):RequestInteraction("Npc10243")
    self:DestroySelf()
end

function Q10112Trigger4:TriggerOut() end
return Q10112Trigger4
