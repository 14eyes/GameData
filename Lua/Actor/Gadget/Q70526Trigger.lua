require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70526Trigger = class("Q70526Trigger", GadgetActorProxy)
Q70526Trigger.defaultAlias = "Q70526Trigger"
local Q70526ClientConfig = require("Quest/Client/Q70526ClientConfig")

local subIDs = Q70526ClientConfig.SubIDs
local npcs = Q70526ClientConfig.Npcs

function Q70526Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70526Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q70526Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("70526")
    actor:ShowTutorialDialog(417)
    actor:RequestInteraction(npcs.Npc1713Data.alias)
    self:DestroySelf()
end

function Q70526Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70526Trigger
