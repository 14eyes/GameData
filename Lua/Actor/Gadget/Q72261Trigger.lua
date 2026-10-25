require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72261Trigger = class("Q72261Trigger", GadgetActorProxy)
Q72261Trigger.defaultAlias = "Q72261Trigger"
local Q72261ClientConfig = require("Quest/Client/Q72261ClientConfig")

local subIDs = Q72261ClientConfig.SubIDs
local npcs = Q72261ClientConfig.Npcs
local datas = Q72261ClientConfig.Datas

function Q72261Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72261Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72261Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72261"):RequestInteraction(npcs.Npc12354Data.alias)
    self:DestroySelf()
end

function Q72261Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72261Trigger
