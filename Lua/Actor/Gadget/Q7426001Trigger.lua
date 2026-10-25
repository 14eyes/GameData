require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7426001Trigger = class("Q7426001Trigger", GadgetActorProxy)
Q7426001Trigger.defaultAlias = "Q7426001Trigger"
local Q74260ClientConfig = require("Quest/Client/Q74260ClientConfig")

local this
local subIDs = Q74260ClientConfig.SubIDs
local npcs = Q74260ClientConfig.Npcs
local points = Q74260ClientConfig.Points

function Q7426001Trigger:OnPostDataPrepare()
    print("Q7426001Trigger - OnPostDataPrepare")
    this = self
end

function Q7426001Trigger:OnPostComponentPrepare()
    print("Q7426001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74260)
end

function Q7426001Trigger:TriggerIn()
    print("Q7426001Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7426001})
    this:DestroySelf()
end

function Q7426001Trigger:PreTriggerIn()
    print("Q7426001Trigger - PreTriggerIn")
end

function Q7426001Trigger:LightUpTriggerIn()
    print("Q7426001Trigger - LightUpTriggerIn")
end

function Q7426001Trigger:TriggerOut()
    print("Q7426001Trigger - TriggerOut")
end

return Q7426001Trigger
