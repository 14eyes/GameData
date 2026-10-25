require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302612Trigger = class("Q1302612Trigger", GadgetActorProxy)
Q1302612Trigger.defaultAlias = "Q1302612Trigger"
local Q13026ClientConfig = require("Quest/Client/Q13026ClientConfig")

local this
local subIDs = Q13026ClientConfig.SubIDs
local npcs = Q13026ClientConfig.Npcs
local gadgets = Q13026ClientConfig.Gadgets
local datas = Q13026ClientConfig.Datas

function Q1302612Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302612Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(15, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302612Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13026"):RequestInteraction(npcs.Npc13107Data.alias)
    this:DestroySelf()
end

function Q1302612Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302612Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302612Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1302612Trigger
