require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700402Trigger = class("Q7700402Trigger", GadgetActorProxy)
Q7700402Trigger.defaultAlias = "Q7700402Trigger"
local Q77004ClientConfig = require("Quest/Client/Q77004ClientConfig")

local this
local subIDs = Q77004ClientConfig.SubIDs
local datas = Q77004ClientConfig.Datas
local npcs = Q77004ClientConfig.Npcs
local points = Q77004ClientConfig.Points

function Q7700402Trigger:OnPostDataPrepare()
    print("Q7700402Trigger - OnPostDataPrepare")
    this = self
end

function Q7700402Trigger:OnPostComponentPrepare()
    print("Q7700402Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77004)
end

function Q7700402Trigger:TriggerIn()
    print("Q7700402Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7700402})
    this:DestroySelf()
end

function Q7700402Trigger:PreTriggerIn()
    print("Q7700402Trigger - PreTriggerIn")
end

function Q7700402Trigger:LightUpTriggerIn()
    print("Q7700402Trigger - LightUpTriggerIn")
end

function Q7700402Trigger:TriggerOut()
    print("Q7700402Trigger - TriggerOut")
end

return Q7700402Trigger
