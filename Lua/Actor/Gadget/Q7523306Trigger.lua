require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523306Trigger = class("Q7523306Trigger", GadgetActorProxy)
Q7523306Trigger.defaultAlias = "Q7523306Trigger"
local Q75233ClientConfig = require("Quest/Client/Q75233ClientConfig")

local this
local subIDs = Q75233ClientConfig.SubIDs
local npcs = Q75233ClientConfig.Npcs
local points = Q75233ClientConfig.Points

function Q7523306Trigger:OnPostDataPrepare()
    print("Q7523306Trigger - OnPostDataPrepare")
    this = self
end

function Q7523306Trigger:OnPostComponentPrepare()
    print("Q7523306Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75233)
end

function Q7523306Trigger:TriggerIn()
    print("Q7523306Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523306)
    this:DestroySelf()
end

function Q7523306Trigger:PreTriggerIn()
    print("Q7523306Trigger - PreTriggerIn")
end

function Q7523306Trigger:LightUpTriggerIn()
    print("Q7523306Trigger - LightUpTriggerIn")
end

function Q7523306Trigger:TriggerOut()
    print("Q7523306Trigger - TriggerOut")
end

return Q7523306Trigger
