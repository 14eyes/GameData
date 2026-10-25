require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7365002Trigger = class("Q7365002Trigger", GadgetActorProxy)
Q7365002Trigger.defaultAlias = "Q7365002Trigger"
local Q73650ClientConfig = require("Quest/Client/Q73650ClientConfig")

local subIDs = Q73650ClientConfig.SubIDs
local npcs = Q73650ClientConfig.Npcs
local datas = Q73650ClientConfig.Datas

function Q7365002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7365002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7365002Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73650"):RequestInteraction(npcs.Npc30225Data.alias)
    self:DestroySelf()
end

function Q7365002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7365002Trigger
