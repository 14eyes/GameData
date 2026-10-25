require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7266002Trigger = class("Q7266002Trigger", GadgetActorProxy)
Q7266002Trigger.defaultAlias = "Q7266002Trigger"
local Q72660ClientConfig = require("Quest/Client/Q72660ClientConfig")

local subIDs = Q72660ClientConfig.SubIDs
local npcs = Q72660ClientConfig.Npcs
local datas = Q72660ClientConfig.Datas

function Q7266002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7266002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7266002Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72660"):RequestInteraction(npcs.Npc30065Data.alias)
    self:DestroySelf()
end

function Q7266002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7266002Trigger
