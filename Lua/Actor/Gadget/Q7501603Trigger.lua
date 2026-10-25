require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501603Trigger = class("Q7501603Trigger", GadgetActorProxy)
Q7501603Trigger.defaultAlias = "Q7501603Trigger"
local Q75016ClientConfig = require("Quest/Client/Q75016ClientConfig")

local this
local subIDs = Q75016ClientConfig.SubIDs
local npcs = Q75016ClientConfig.Npcs
local datas = Q75016ClientConfig.Datas

function Q7501603Trigger:OnPostDataPrepare()
    print("[MainId: 75016][Trigger: Q7501603Trigger] OnPostDataPrepare")
    this = self
end

function Q7501603Trigger:OnPostComponentPrepare()
    print("[MainId: 75016][Trigger: Q7501603Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(39.81974, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75016)
end

function Q7501603Trigger:TriggerIn()
    print("[MainId: 75016][Trigger: Q7501603Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7501603Trigger:PreTriggerIn()
    print("[MainId: 75016][Trigger: Q7501603Trigger] PreTriggerIn")
end

function Q7501603Trigger:LightUpTriggerIn()
    print("[MainId: 75016][Trigger: Q7501603Trigger] LightUpTriggerIn")
end

function Q7501603Trigger:TriggerOut()
    print("[MainId: 75016][Trigger: Q7501603Trigger] TriggerOut")
end

return Q7501603Trigger
