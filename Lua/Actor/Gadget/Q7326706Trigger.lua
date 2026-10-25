require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7326706Trigger = class("Q7326706Trigger", GadgetActorProxy)
Q7326706Trigger.defaultAlias = "Q7326706Trigger"
local Q73267ClientConfig = require("Quest/Client/Q73267ClientConfig")

local this
local subIDs = Q73267ClientConfig.SubIDs
local npcs = Q73267ClientConfig.Npcs
local datas = Q73267ClientConfig.Datas

function Q7326706Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7326706Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7326706Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73267"):RequestInteraction(npcs.Npc4410Data.alias)
    this:DestroySelf()
end

function Q7326706Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7326706Trigger
