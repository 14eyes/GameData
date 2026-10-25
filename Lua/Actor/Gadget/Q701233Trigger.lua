require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701233Trigger = class("Q701233Trigger", GadgetActorProxy)
Q701233Trigger.defaultAlias = "Q701233Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701233Trigger:OnPostDataPrepare()
    print("Q701233Trigger - OnPostDataPrepare")
    this = self
end

function Q701233Trigger:OnPostComponentPrepare()
    print("Q701233Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6.5198345, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701233Trigger:TriggerIn()
    print("Q701233Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701233})
    this:DestroySelf()
end

function Q701233Trigger:PreTriggerIn()
    print("Q701233Trigger - PreTriggerIn")
end

function Q701233Trigger:LightUpTriggerIn()
    print("Q701233Trigger - LightUpTriggerIn")
end

function Q701233Trigger:TriggerOut()
    print("Q701233Trigger - TriggerOut")
end

return Q701233Trigger
