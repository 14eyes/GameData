require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7617604Trigger = class("Q7617604Trigger", GadgetActorProxy)
Q7617604Trigger.defaultAlias = "Q7617604Trigger"
local Q76176ClientConfig = require("Quest/Client/Q76176ClientConfig")

local this
local subIDs = Q76176ClientConfig.SubIDs
local npcs = Q76176ClientConfig.Npcs
local points = Q76176ClientConfig.Points

function Q7617604Trigger:OnPostDataPrepare()
    print("Q7617604Trigger - OnPostDataPrepare")
    this = self
end

function Q7617604Trigger:OnPostComponentPrepare()
    print("Q7617604Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76176)
end

function Q7617604Trigger:TriggerIn()
    print("Q7617604Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7617604})
    this:DestroySelf()
end

function Q7617604Trigger:PreTriggerIn()
    print("Q7617604Trigger - PreTriggerIn")
end

function Q7617604Trigger:LightUpTriggerIn()
    print("Q7617604Trigger - LightUpTriggerIn")
end

function Q7617604Trigger:TriggerOut()
    print("Q7617604Trigger - TriggerOut")
end

return Q7617604Trigger
