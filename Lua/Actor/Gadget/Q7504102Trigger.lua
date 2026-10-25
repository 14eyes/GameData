require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7504102Trigger = class("Q7504102Trigger", GadgetActorProxy)
Q7504102Trigger.defaultAlias = "Q7504102Trigger"
local Q75041ClientConfig = require("Quest/Client/Q75041ClientConfig")

local this
local subIDs = Q75041ClientConfig.SubIDs
local npcs = Q75041ClientConfig.Npcs
local points = Q75041ClientConfig.Points

function Q7504102Trigger:OnPostDataPrepare()
    print("[MainId: 75041][Trigger: Q7504102Trigger] OnPostDataPrepare")
    this = self
end

function Q7504102Trigger:OnPostComponentPrepare()
    print("[MainId: 75041][Trigger: Q7504102Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75041)
end

function Q7504102Trigger:TriggerIn()
    print("[MainId: 75041][Trigger: Q7504102Trigger] TriggerIn")
end

function Q7504102Trigger:PreTriggerIn()
    print("[MainId: 75041][Trigger: Q7504102Trigger] PreTriggerIn")
end

function Q7504102Trigger:LightUpTriggerIn()
    print("[MainId: 75041][Trigger: Q7504102Trigger] LightUpTriggerIn")
end

function Q7504102Trigger:TriggerOut()
    print("[MainId: 75041][Trigger: Q7504102Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7504102)
    this:DestroySelf()
end

return Q7504102Trigger
