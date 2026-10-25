require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71046Trigger = class("Q71046Trigger", GadgetActorProxy)
Q71046Trigger.defaultAlias = "Q71046Trigger"
local Q71046ClientConfig = require("Quest/Client/Q71046ClientConfig")

local subIDs = Q71046ClientConfig.SubIDs
local npcs = Q71046ClientConfig.Npcs

function Q71046Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71046Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71046Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71046"):RequestInteraction("20559")
    self:DestroySelf()
end

function Q71046Trigger:TriggerOut()
    print("TriggerOut")
end

return Q71046Trigger
