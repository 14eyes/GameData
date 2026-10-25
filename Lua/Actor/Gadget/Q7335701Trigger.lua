require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7335701Trigger = class("Q7335701Trigger", GadgetActorProxy)
Q7335701Trigger.defaultAlias = "Q7335701Trigger"
local Q73357ClientConfig = require("Quest/Client/Q73357ClientConfig")

local this
local subIDs = Q73357ClientConfig.SubIDs
local npcs = Q73357ClientConfig.Npcs
local points = Q73357ClientConfig.Points

function Q7335701Trigger:OnPostDataPrepare()
    print("Q7335701Trigger - OnPostDataPrepare")
    this = self
end

function Q7335701Trigger:OnPostComponentPrepare()
    print("Q7335701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 73357)
end

function Q7335701Trigger:TriggerIn()
    print("Q7335701Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7335701})
    this:DestroySelf()
end

function Q7335701Trigger:PreTriggerIn()
    print("Q7335701Trigger - PreTriggerIn")
end

function Q7335701Trigger:LightUpTriggerIn()
    print("Q7335701Trigger - LightUpTriggerIn")
end

function Q7335701Trigger:TriggerOut()
    print("Q7335701Trigger - TriggerOut")
end

return Q7335701Trigger
