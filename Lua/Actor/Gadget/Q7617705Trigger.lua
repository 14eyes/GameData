require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7617705Trigger = class("Q7617705Trigger", GadgetActorProxy)
Q7617705Trigger.defaultAlias = "Q7617705Trigger"
local Q76177ClientConfig = require("Quest/Client/Q76177ClientConfig")

local this
local subIDs = Q76177ClientConfig.SubIDs
local npcs = Q76177ClientConfig.Npcs
local points = Q76177ClientConfig.Points

function Q7617705Trigger:OnPostDataPrepare()
    print("Q7617705Trigger - OnPostDataPrepare")
    this = self
end

function Q7617705Trigger:OnPostComponentPrepare()
    print("Q7617705Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(15, 22, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76177)
end

function Q7617705Trigger:TriggerIn()
    print("Q7617705Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7617705)
    this:DestroySelf()
end

function Q7617705Trigger:PreTriggerIn()
    print("Q7617705Trigger - PreTriggerIn")
end

function Q7617705Trigger:LightUpTriggerIn()
    print("Q7617705Trigger - LightUpTriggerIn")
end

function Q7617705Trigger:TriggerOut()
    print("Q7617705Trigger - TriggerOut")
end

return Q7617705Trigger
