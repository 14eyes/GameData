require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7425301Trigger = class("Q7425301Trigger", GadgetActorProxy)
Q7425301Trigger.defaultAlias = "Q7425301Trigger"
local Q74253ClientConfig = require("Quest/Client/Q74253ClientConfig")

local this
local subIDs = Q74253ClientConfig.SubIDs
local npcs = Q74253ClientConfig.Npcs
local points = Q74253ClientConfig.Points

function Q7425301Trigger:OnPostDataPrepare()
    print("Q7425301Trigger - OnPostDataPrepare")
    this = self
end

function Q7425301Trigger:OnPostComponentPrepare()
    print("Q7425301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74253)
end

function Q7425301Trigger:TriggerIn()
    print("Q7425301Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7425301})
    this:DestroySelf()
end

function Q7425301Trigger:PreTriggerIn()
    print("Q7425301Trigger - PreTriggerIn")
end

function Q7425301Trigger:LightUpTriggerIn()
    print("Q7425301Trigger - LightUpTriggerIn")
end

function Q7425301Trigger:TriggerOut()
    print("Q7425301Trigger - TriggerOut")
end

return Q7425301Trigger
