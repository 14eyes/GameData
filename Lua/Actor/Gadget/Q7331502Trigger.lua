require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7331502Trigger = class("Q7331502Trigger", GadgetActorProxy)
Q7331502Trigger.defaultAlias = "Q7331502Trigger"
local Q73315ClientConfig = require("Quest/Client/Q73315ClientConfig")

local this
local subIDs = Q73315ClientConfig.SubIDs
local npcs = Q73315ClientConfig.Npcs
local points = Q73315ClientConfig.Points
local datas = Q73315ClientConfig.Datas

function Q7331502Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7331502Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7331502Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7331502)
    this:DestroySelf()
end

function Q7331502Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7331502Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7331502Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7331502Trigger
