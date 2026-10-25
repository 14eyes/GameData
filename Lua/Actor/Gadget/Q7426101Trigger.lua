require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7426101Trigger = class("Q7426101Trigger", GadgetActorProxy)
Q7426101Trigger.defaultAlias = "Q7426101Trigger"
local Q74261ClientConfig = require("Quest/Client/Q74261ClientConfig")

local this
local subIDs = Q74261ClientConfig.SubIDs
local npcs = Q74261ClientConfig.Npcs
local points = Q74261ClientConfig.Points

function Q7426101Trigger:OnPostDataPrepare()
    print("Q7426101Trigger - OnPostDataPrepare")
    this = self
end

function Q7426101Trigger:OnPostComponentPrepare()
    print("Q7426101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74261)
end

function Q7426101Trigger:TriggerIn()
    print("Q7426101Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7426101})
    this:DestroySelf()
end

function Q7426101Trigger:PreTriggerIn()
    print("Q7426101Trigger - PreTriggerIn")
end

function Q7426101Trigger:LightUpTriggerIn()
    print("Q7426101Trigger - LightUpTriggerIn")
end

function Q7426101Trigger:TriggerOut()
    print("Q7426101Trigger - TriggerOut")
end

return Q7426101Trigger
