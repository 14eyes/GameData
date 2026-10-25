require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110604Trigger = class("Q7110604Trigger", GadgetActorProxy)
Q7110604Trigger.defaultAlias = "Q7110604Trigger"
local Q71106ClientConfig = require("Quest/Client/Q71106ClientConfig")

local this
local subIDs = Q71106ClientConfig.SubIDs
local npcs = Q71106ClientConfig.Npcs
local points = Q71106ClientConfig.Points
local datas = Q71106ClientConfig.Datas

function Q7110604Trigger:OnPostDataPrepare()
    print("[MainId: 71106][Trigger: Q7110604Trigger] OnPostDataPrepare")
    this = self
end

function Q7110604Trigger:OnPostComponentPrepare()
    print("[MainId: 71106][Trigger: Q7110604Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110604Trigger:TriggerIn()
    print("[MainId: 71106][Trigger: Q7110604Trigger] TriggerIn")
    actorMgr:GetActor("71106"):NarratorOnlyTaskByData(datas.Narrator_711060401)
    this:DestroySelf()
end

function Q7110604Trigger:PreTriggerIn()
    print("[MainId: 71106][Trigger: Q7110604Trigger] PreTriggerIn")
end

function Q7110604Trigger:LightUpTriggerIn()
    print("[MainId: 71106][Trigger: Q7110604Trigger] LightUpTriggerIn")
end

function Q7110604Trigger:TriggerOut()
    print("[MainId: 71106][Trigger: Q7110604Trigger] TriggerOut")
end

return Q7110604Trigger
