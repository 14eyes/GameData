require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711514Trigger = class("Q7711514Trigger", GadgetActorProxy)
Q7711514Trigger.defaultAlias = "Q7711514Trigger"
local Q77115ClientConfig = require("Quest/Client/Q77115ClientConfig")

local this
local subIDs = Q77115ClientConfig.SubIDs
local npcs = Q77115ClientConfig.Npcs
local points = Q77115ClientConfig.Points

function Q7711514Trigger:OnPostDataPrepare()
    print("Q7711514Trigger - OnPostDataPrepare")
    this = self
end

function Q7711514Trigger:OnPostComponentPrepare()
    print("Q7711514Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77115)
end

function Q7711514Trigger:TriggerIn()
    print("Q7711514Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7711514})
    this:DestroySelf()
end

function Q7711514Trigger:PreTriggerIn()
    print("Q7711514Trigger - PreTriggerIn")
end

function Q7711514Trigger:LightUpTriggerIn()
    print("Q7711514Trigger - LightUpTriggerIn")
end

function Q7711514Trigger:TriggerOut()
    print("Q7711514Trigger - TriggerOut")
end

return Q7711514Trigger
