require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7406101Trigger = class("Q7406101Trigger", GadgetActorProxy)
Q7406101Trigger.defaultAlias = "Q7406101Trigger"
local Q74061ClientConfig = require("Quest/Client/Q74061ClientConfig")

local this
local subIDs = Q74061ClientConfig.SubIDs
local npcs = Q74061ClientConfig.Npcs
local points = Q74061ClientConfig.Points

function Q7406101Trigger:OnPostDataPrepare()
    print("[MainId: 74061][Trigger: Q7406101Trigger] OnPostDataPrepare")
    this = self
end

function Q7406101Trigger:OnPostComponentPrepare()
    print("[MainId: 74061][Trigger: Q7406101Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7406101Trigger:TriggerIn()
    print("[MainId: 74061][Trigger: Q7406101Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7406101)
    this:DestroySelf()
end

function Q7406101Trigger:PreTriggerIn()
    print("[MainId: 74061][Trigger: Q7406101Trigger] PreTriggerIn")
end

function Q7406101Trigger:LightUpTriggerIn()
    print("[MainId: 74061][Trigger: Q7406101Trigger] LightUpTriggerIn")
end

function Q7406101Trigger:TriggerOut()
    print("[MainId: 74061][Trigger: Q7406101Trigger] TriggerOut")
end

return Q7406101Trigger
