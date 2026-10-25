require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74097Trigger = class("Q74097Trigger", GadgetActorProxy)
Q74097Trigger.defaultAlias = "Q74097Trigger"
local Q74097ClientConfig = require("Quest/Client/Q74097ClientConfig")

local this
local subIDs = Q74097ClientConfig.SubIDs
local npcs = Q74097ClientConfig.Npcs
local datas = Q74097ClientConfig.Datas

function Q74097Trigger:OnPostDataPrepare()
    print("[MainId: 74097][Trigger: Q74097Trigger] OnPostDataPrepare")
    this = self
end

function Q74097Trigger:OnPostComponentPrepare()
    print("[MainId: 74097][Trigger: Q74097Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74097Trigger:TriggerIn()
    print("[MainId: 74097][Trigger: Q74097Trigger] TriggerIn")
    this:DestroySelf()
end

function Q74097Trigger:PreTriggerIn()
    print("[MainId: 74097][Trigger: Q74097Trigger] PreTriggerIn")
end

function Q74097Trigger:LightUpTriggerIn()
    print("[MainId: 74097][Trigger: Q74097Trigger] LightUpTriggerIn")
end

function Q74097Trigger:TriggerOut()
    print("[MainId: 74097][Trigger: Q74097Trigger] TriggerOut")
end

return Q74097Trigger
