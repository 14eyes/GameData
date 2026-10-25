require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710126Trigger = class("Q7710126Trigger", GadgetActorProxy)
Q7710126Trigger.defaultAlias = "Q7710126Trigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710126Trigger:OnPostDataPrepare()
    print("Q7710126Trigger - OnPostDataPrepare")
    this = self
end

function Q7710126Trigger:OnPostComponentPrepare()
    print("Q7710126Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710126Trigger:TriggerIn()
    print("Q7710126Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710126})
    this:DestroySelf()
end

function Q7710126Trigger:PreTriggerIn()
    print("Q7710126Trigger - PreTriggerIn")
end

function Q7710126Trigger:LightUpTriggerIn()
    print("Q7710126Trigger - LightUpTriggerIn")
end

function Q7710126Trigger:TriggerOut()
    print("Q7710126Trigger - TriggerOut")
end

return Q7710126Trigger
