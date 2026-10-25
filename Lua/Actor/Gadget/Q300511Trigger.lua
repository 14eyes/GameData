require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300511Trigger = class("Q300511Trigger", GadgetActorProxy)
Q300511Trigger.defaultAlias = "Q300511Trigger"
local Q3005ClientConfig = require("Quest/Client/Q3005ClientConfig")

local subIDs = Q3005ClientConfig.SubIDs
local npcs = Q3005ClientConfig.Npcs
local datas = Q3005ClientConfig.Datas

function Q300511Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300511Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300511Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3005"):RequestInteraction(npcs.Npc12584Data.alias)
    self:DestroySelf()
end

function Q300511Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300511Trigger
