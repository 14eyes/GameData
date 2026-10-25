require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7224415Trigger = class("Q7224415Trigger", GadgetActorProxy)
Q7224415Trigger.defaultAlias = "Q7224415Trigger"
local Q72244ClientConfig = require("Quest/Client/Q72244ClientConfig")

local subIDs = Q72244ClientConfig.SubIDs
local npcs = Q72244ClientConfig.Npcs
local datas = Q72244ClientConfig.Datas

function Q7224415Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7224415Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6.361211, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7224415Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72244"):RequestInteraction(npcs.NPC20346Data.alias)
    self:DestroySelf()
end

function Q7224415Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7224415Trigger
