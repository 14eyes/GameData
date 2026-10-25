require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13009Trigger = class("Q13009Trigger", GadgetActorProxy)
Q13009Trigger.defaultAlias = "Q13009Trigger"
local Q13009ClientConfig = require("Quest/Client/Q13009ClientConfig")

local subIDs = Q13009ClientConfig.SubIDs
local npcs = Q13009ClientConfig.Npcs

function Q13009Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13009Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13009Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13009"):RequestInteraction(npcs.Npc12772Data.alias)
    self:DestroySelf()
end

function Q13009Trigger:TriggerOut()
    print("TriggerOut")
end

return Q13009Trigger
