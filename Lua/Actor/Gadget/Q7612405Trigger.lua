require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612405Trigger = class("Q7612405Trigger", GadgetActorProxy)
Q7612405Trigger.defaultAlias = "Q7612405Trigger"
local Q76124ClientConfig = require("Quest/Client/Q76124ClientConfig")

local this
local subIDs = Q76124ClientConfig.SubIDs
local npcs = Q76124ClientConfig.Npcs
local points = Q76124ClientConfig.Points

function Q7612405Trigger:OnPostDataPrepare()
    print("Q7612405Trigger - OnPostDataPrepare")
    this = self
end

function Q7612405Trigger:OnPostComponentPrepare()
    print("Q7612405Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76124)
end

function Q7612405Trigger:TriggerIn()
    print("Q7612405Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7612405})
    this:DestroySelf()
end

function Q7612405Trigger:PreTriggerIn()
    print("Q7612405Trigger - PreTriggerIn")
end

function Q7612405Trigger:LightUpTriggerIn()
    print("Q7612405Trigger - LightUpTriggerIn")
end

function Q7612405Trigger:TriggerOut()
    print("Q7612405Trigger - TriggerOut")
end

return Q7612405Trigger
