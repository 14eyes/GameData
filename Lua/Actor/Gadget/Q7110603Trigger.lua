require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110603Trigger = class("Q7110603Trigger", GadgetActorProxy)
Q7110603Trigger.defaultAlias = "Q7110603Trigger"
local Q71106ClientConfig = require("Quest/Client/Q71106ClientConfig")

local this
local subIDs = Q71106ClientConfig.SubIDs
local npcs = Q71106ClientConfig.Npcs
local points = Q71106ClientConfig.Points
local datas = Q71106ClientConfig.Datas

function Q7110603Trigger:OnPostDataPrepare()
    print("[MainId: 71106][Trigger: Q7110603Trigger] OnPostDataPrepare")
    this = self
end

function Q7110603Trigger:OnPostComponentPrepare()
    print("[MainId: 71106][Trigger: Q7110603Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110603Trigger:TriggerIn()
    print("[MainId: 71106][Trigger: Q7110603Trigger] TriggerIn")
    actorMgr:GetActor("71106"):NarratorOnlyTaskByData(datas.Narrator_711060301)
    this:DestroySelf()
end

function Q7110603Trigger:PreTriggerIn()
    print("[MainId: 71106][Trigger: Q7110603Trigger] PreTriggerIn")
end

function Q7110603Trigger:LightUpTriggerIn()
    print("[MainId: 71106][Trigger: Q7110603Trigger] LightUpTriggerIn")
end

function Q7110603Trigger:TriggerOut()
    print("[MainId: 71106][Trigger: Q7110603Trigger] TriggerOut")
end

return Q7110603Trigger
