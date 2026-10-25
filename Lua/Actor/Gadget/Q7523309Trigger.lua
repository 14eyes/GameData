require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523309Trigger = class("Q7523309Trigger", GadgetActorProxy)
Q7523309Trigger.defaultAlias = "Q7523309Trigger"
local Q75233ClientConfig = require("Quest/Client/Q75233ClientConfig")

local this
local subIDs = Q75233ClientConfig.SubIDs
local npcs = Q75233ClientConfig.Npcs
local points = Q75233ClientConfig.Points

function Q7523309Trigger:OnPostDataPrepare()
    print("Q7523309Trigger - OnPostDataPrepare")
    this = self
end

function Q7523309Trigger:OnPostComponentPrepare()
    print("Q7523309Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75233)
end

function Q7523309Trigger:TriggerIn()
    print("Q7523309Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523309)
    this:DestroySelf()
end

function Q7523309Trigger:PreTriggerIn()
    print("Q7523309Trigger - PreTriggerIn")
end

function Q7523309Trigger:LightUpTriggerIn()
    print("Q7523309Trigger - LightUpTriggerIn")
end

function Q7523309Trigger:TriggerOut()
    print("Q7523309Trigger - TriggerOut")
end

return Q7523309Trigger
