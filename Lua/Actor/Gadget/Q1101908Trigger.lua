require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1101908Trigger = class("Q1101908Trigger", GadgetActorProxy)
Q1101908Trigger.defaultAlias = "Q1101908Trigger"
local Q11019ClientConfig = require("Quest/Client/Q11019ClientConfig")

local this
local subIDs = Q11019ClientConfig.SubIDs
local npcs = Q11019ClientConfig.Npcs
local gadgets = Q11019ClientConfig.Gadgets
local datas = Q11019ClientConfig.Datas

function Q1101908Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1101908Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1101908Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11019"):RequestInteraction(npcs.Npc2034Data.alias)
    this:DestroySelf()
end

function Q1101908Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1101908Trigger
