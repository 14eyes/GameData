require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70676Trigger = class("Q70676Trigger", GadgetActorProxy)
Q70676Trigger.defaultAlias = "Q70676Trigger"
local Q70676ClientConfig = require("Quest/Client/Q70676ClientConfig")

local this
local subIDs = Q70676ClientConfig.SubIDs
local npcs = Q70676ClientConfig.Npcs
local points = Q70676ClientConfig.Points

function Q70676Trigger:OnPostDataPrepare()
    print("[MainId: 70676][Trigger: Q70676Trigger] OnPostDataPrepare")
    this = self
end

function Q70676Trigger:OnPostComponentPrepare()
    print("[MainId: 70676][Trigger: Q70676Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70676)
end

function Q70676Trigger:TriggerIn()
    print("[MainId: 70676][Trigger: Q70676Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7067601)
    this:DestroySelf()
end

function Q70676Trigger:PreTriggerIn()
    print("[MainId: 70676][Trigger: Q70676Trigger] PreTriggerIn")
end

function Q70676Trigger:LightUpTriggerIn()
    print("[MainId: 70676][Trigger: Q70676Trigger] LightUpTriggerIn")
end

function Q70676Trigger:TriggerOut()
    print("[MainId: 70676][Trigger: Q70676Trigger] TriggerOut")
end

return Q70676Trigger
