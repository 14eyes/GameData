require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216229Trigger = class("Q7216229Trigger", GadgetActorProxy)
Q7216229Trigger.defaultAlias = "Q7216229Trigger"
local Q72162ClientConfig = require("Quest/Client/Q72162ClientConfig")

local subIDs = Q72162ClientConfig.SubIDs
local npcs = Q72162ClientConfig.Npcs
local datas = Q72162ClientConfig.Datas

function Q7216229Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216229Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216229Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72162"):RequestInteraction(npcs.Npc3063Data.alias)
    self:DestroySelf()
end

function Q7216229Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7216229Trigger
