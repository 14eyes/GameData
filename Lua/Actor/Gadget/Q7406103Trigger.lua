require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7406103Trigger = class("Q7406103Trigger", GadgetActorProxy)
Q7406103Trigger.defaultAlias = "Q7406103Trigger"
local Q74061ClientConfig = require("Quest/Client/Q74061ClientConfig")

local this
local subIDs = Q74061ClientConfig.SubIDs
local npcs = Q74061ClientConfig.Npcs
local points = Q74061ClientConfig.Points

function Q7406103Trigger:OnPostDataPrepare()
    print("[MainId: 74061][Trigger: Q7406103Trigger] OnPostDataPrepare")
    this = self
end

function Q7406103Trigger:OnPostComponentPrepare()
    print("[MainId: 74061][Trigger: Q7406103Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(8, 6, 3, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7406103Trigger:TriggerIn()
    print("[MainId: 74061][Trigger: Q7406103Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7406103)
    this:DestroySelf()
end

function Q7406103Trigger:PreTriggerIn()
    print("[MainId: 74061][Trigger: Q7406103Trigger] PreTriggerIn")
end

function Q7406103Trigger:LightUpTriggerIn()
    print("[MainId: 74061][Trigger: Q7406103Trigger] LightUpTriggerIn")
end

function Q7406103Trigger:TriggerOut()
    print("[MainId: 74061][Trigger: Q7406103Trigger] TriggerOut")
end

return Q7406103Trigger
