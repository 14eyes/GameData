require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616304Trigger = class("Q7616304Trigger", GadgetActorProxy)
Q7616304Trigger.defaultAlias = "Q7616304Trigger"
local Q76163ClientConfig = require("Quest/Client/Q76163ClientConfig")

local this
local subIDs = Q76163ClientConfig.SubIDs
local npcs = Q76163ClientConfig.Npcs
local points = Q76163ClientConfig.Points

function Q7616304Trigger:OnPostDataPrepare()
    print("Q7616304Trigger - OnPostDataPrepare")
    this = self
end

function Q7616304Trigger:OnPostComponentPrepare()
    print("Q7616304Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76163)
end

function Q7616304Trigger:TriggerIn()
    print("Q7616304Trigger - TriggerIn")
end

function Q7616304Trigger:PreTriggerIn()
    print("Q7616304Trigger - PreTriggerIn")
end

function Q7616304Trigger:LightUpTriggerIn()
    print("Q7616304Trigger - LightUpTriggerIn")
end

function Q7616304Trigger:TriggerOut()
    print("Q7616304Trigger - TriggerOut")
    actorUtils.FinishQuestWithParam({false}, {7616304})
    this:DestroySelf()
end

return Q7616304Trigger
