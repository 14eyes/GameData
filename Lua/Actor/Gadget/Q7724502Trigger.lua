require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7724502Trigger = class("Q7724502Trigger", GadgetActorProxy)
Q7724502Trigger.defaultAlias = "Q7724502Trigger"
local Q77245ClientConfig = require("Quest/Client/Q77245ClientConfig")

local this
local subIDs = Q77245ClientConfig.SubIDs
local npcs = Q77245ClientConfig.Npcs
local points = Q77245ClientConfig.Points

function Q7724502Trigger:OnPostDataPrepare()
    print("Q7724502Trigger - OnPostDataPrepare")
    this = self
end

function Q7724502Trigger:OnPostComponentPrepare()
    print("Q7724502Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 80, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77245)
end

function Q7724502Trigger:TriggerIn()
    print("Q7724502Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7724502})
    this:DestroySelf()
end

function Q7724502Trigger:PreTriggerIn()
    print("Q7724502Trigger - PreTriggerIn")
end

function Q7724502Trigger:LightUpTriggerIn()
    print("Q7724502Trigger - LightUpTriggerIn")
end

function Q7724502Trigger:TriggerOut()
    print("Q7724502Trigger - TriggerOut")
end

return Q7724502Trigger
