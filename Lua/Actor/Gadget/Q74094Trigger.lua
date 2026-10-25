require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74094Trigger = class("Q74094Trigger", GadgetActorProxy)
Q74094Trigger.defaultAlias = "Q74094Trigger"
local Q74094ClientConfig = require("Quest/Client/Q74094ClientConfig")

local this
local subIDs = Q74094ClientConfig.SubIDs
local npcs = Q74094ClientConfig.Npcs
local datas = Q74094ClientConfig.Datas

function Q74094Trigger:OnPostDataPrepare()
    print("[MainId: 74094][Trigger: Q74094Trigger] OnPostDataPrepare")
    this = self
end

function Q74094Trigger:OnPostComponentPrepare()
    print("[MainId: 74094][Trigger: Q74094Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74094Trigger:TriggerIn()
    print("[MainId: 74094][Trigger: Q74094Trigger] TriggerIn")
    this:DestroySelf()
end

function Q74094Trigger:PreTriggerIn()
    print("[MainId: 74094][Trigger: Q74094Trigger] PreTriggerIn")
end

function Q74094Trigger:LightUpTriggerIn()
    print("[MainId: 74094][Trigger: Q74094Trigger] LightUpTriggerIn")
end

function Q74094Trigger:TriggerOut()
    print("[MainId: 74094][Trigger: Q74094Trigger] TriggerOut")
end

return Q74094Trigger
