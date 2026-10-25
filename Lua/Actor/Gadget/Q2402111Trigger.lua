require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2402111Trigger = class("Q2402111Trigger", GadgetActorProxy)
Q2402111Trigger.defaultAlias = "Q2402111Trigger"
local Q24021ClientConfig = require("Quest/Client/Q24021ClientConfig")

local this
local subIDs = Q24021ClientConfig.SubIDs
local npcs = Q24021ClientConfig.Npcs
local points = Q24021ClientConfig.Points

function Q2402111Trigger:OnPostDataPrepare()
    print("[MainId: 24021][Trigger: Q2402111Trigger] OnPostDataPrepare")
    this = self
end

function Q2402111Trigger:OnPostComponentPrepare()
    print("[MainId: 24021][Trigger: Q2402111Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(32, 15, 8, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2402111Trigger:TriggerIn()
    print("[MainId: 24021][Trigger: Q2402111Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 2402111)
    this:DestroySelf()
end

function Q2402111Trigger:PreTriggerIn()
    print("[MainId: 24021][Trigger: Q2402111Trigger] PreTriggerIn")
end

function Q2402111Trigger:LightUpTriggerIn()
    print("[MainId: 24021][Trigger: Q2402111Trigger] LightUpTriggerIn")
end

function Q2402111Trigger:TriggerOut()
    print("[MainId: 24021][Trigger: Q2402111Trigger] TriggerOut")
end

return Q2402111Trigger
