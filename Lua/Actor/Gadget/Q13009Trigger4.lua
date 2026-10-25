require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13009Trigger4 = class("Q13009Trigger4", GadgetActorProxy)
Q13009Trigger4.defaultAlias = "Q13009Trigger4"
local Q13009ClientConfig = require("Quest/Client/Q13009ClientConfig")

local subIDs = Q13009ClientConfig.SubIDs
local npcs = Q13009ClientConfig.Npcs

function Q13009Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13009Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13009Trigger4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13009"):RequestInteraction(npcs.Npc1058Data.alias)
    self:DestroySelf()
end

function Q13009Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q13009Trigger4
