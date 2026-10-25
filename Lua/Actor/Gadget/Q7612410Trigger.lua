require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612410Trigger = class("Q7612410Trigger", GadgetActorProxy)
Q7612410Trigger.defaultAlias = "Q7612410Trigger"
local Q76124ClientConfig = require("Quest/Client/Q76124ClientConfig")

local this
local subIDs = Q76124ClientConfig.SubIDs
local npcs = Q76124ClientConfig.Npcs
local points = Q76124ClientConfig.Points

function Q7612410Trigger:OnPostDataPrepare()
    print("Q7612410Trigger - OnPostDataPrepare")
    this = self
end

function Q7612410Trigger:OnPostComponentPrepare()
    print("Q7612410Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76124)
end

function Q7612410Trigger:TriggerIn()
    print("Q7612410Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7612410})
    this:DestroySelf()
end

function Q7612410Trigger:PreTriggerIn()
    print("Q7612410Trigger - PreTriggerIn")
end

function Q7612410Trigger:LightUpTriggerIn()
    print("Q7612410Trigger - LightUpTriggerIn")
end

function Q7612410Trigger:TriggerOut()
    print("Q7612410Trigger - TriggerOut")
end

return Q7612410Trigger
