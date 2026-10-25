require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110605Trigger = class("Q7110605Trigger", GadgetActorProxy)
Q7110605Trigger.defaultAlias = "Q7110605Trigger"
local Q71106ClientConfig = require("Quest/Client/Q71106ClientConfig")

local this
local subIDs = Q71106ClientConfig.SubIDs
local npcs = Q71106ClientConfig.Npcs
local points = Q71106ClientConfig.Points
local datas = Q71106ClientConfig.Datas

function Q7110605Trigger:OnPostDataPrepare()
    print("[MainId: 71106][Trigger: Q7110605Trigger] OnPostDataPrepare")
    this = self
end

function Q7110605Trigger:OnPostComponentPrepare()
    print("[MainId: 71106][Trigger: Q7110605Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110605Trigger:TriggerIn()
    print("[MainId: 71106][Trigger: Q7110605Trigger] TriggerIn")
    actorMgr:GetActor("71106"):NarratorOnlyTaskByData(datas.Narrator_711060501)
    this:DestroySelf()
end

function Q7110605Trigger:PreTriggerIn()
    print("[MainId: 71106][Trigger: Q7110605Trigger] PreTriggerIn")
end

function Q7110605Trigger:LightUpTriggerIn()
    print("[MainId: 71106][Trigger: Q7110605Trigger] LightUpTriggerIn")
end

function Q7110605Trigger:TriggerOut()
    print("[MainId: 71106][Trigger: Q7110605Trigger] TriggerOut")
end

return Q7110605Trigger
