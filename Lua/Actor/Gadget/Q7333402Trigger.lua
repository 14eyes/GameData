require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7333402Trigger = class("Q7333402Trigger", GadgetActorProxy)
Q7333402Trigger.defaultAlias = "Q7333402Trigger"
local Q73334ClientConfig = require("Quest/Client/Q73334ClientConfig")

local this
local subIDs = Q73334ClientConfig.SubIDs
local npcs = Q73334ClientConfig.Npcs
local points = Q73334ClientConfig.Points
local datas = Q73334ClientConfig.Datas

function Q7333402Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7333402Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7333402Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7333402)
    this:DestroySelf()
end

function Q7333402Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7333402Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7333402Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7333402Trigger
