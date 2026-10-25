require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302613Trigger = class("Q1302613Trigger", GadgetActorProxy)
Q1302613Trigger.defaultAlias = "Q1302613Trigger"
local Q13026ClientConfig = require("Quest/Client/Q13026ClientConfig")

local this
local subIDs = Q13026ClientConfig.SubIDs
local npcs = Q13026ClientConfig.Npcs
local gadgets = Q13026ClientConfig.Gadgets
local datas = Q13026ClientConfig.Datas

function Q1302613Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302613Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(26.52645, 25, 16.08746, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302613Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13026"):RequestInteraction(npcs.Npc13110Data.alias)
    this:DestroySelf()
end

function Q1302613Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302613Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302613Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1302613Trigger
