require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1101907Trigger = class("Q1101907Trigger", GadgetActorProxy)
Q1101907Trigger.defaultAlias = "Q1101907Trigger"
local Q11019ClientConfig = require("Quest/Client/Q11019ClientConfig")

local this
local subIDs = Q11019ClientConfig.SubIDs
local npcs = Q11019ClientConfig.Npcs
local gadgets = Q11019ClientConfig.Gadgets
local datas = Q11019ClientConfig.Datas

function Q1101907Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1101907Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1101907Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11019"):RequestInteraction(npcs.Npc2035Data.alias)
    this:DestroySelf()
end

function Q1101907Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1101907Trigger
