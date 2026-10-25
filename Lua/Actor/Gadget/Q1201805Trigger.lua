require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201805Trigger = class("Q1201805Trigger", GadgetActorProxy)
Q1201805Trigger.defaultAlias = "Q1201805Trigger"
local Q12018ClientConfig = require("Quest/Client/Q12018ClientConfig")

local subIDs = Q12018ClientConfig.SubIDs
local npcs = Q12018ClientConfig.Npcs
local datas = Q12018ClientConfig.Datas

function Q1201805Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201805Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201805Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12018"):RequestInteraction(npcs.Npc3054Data.alias)
    self:DestroySelf()
end

function Q1201805Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1201805Trigger
