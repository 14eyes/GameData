require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701255Trigger = class("Q701255Trigger", GadgetActorProxy)
Q701255Trigger.defaultAlias = "Q701255Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701255Trigger:OnPostDataPrepare()
    print("Q701255Trigger - OnPostDataPrepare")
    this = self
end

function Q701255Trigger:OnPostComponentPrepare()
    print("Q701255Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7.378339, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701255Trigger:TriggerIn()
    print("Q701255Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701255})
    this:DestroySelf()
end

function Q701255Trigger:PreTriggerIn()
    print("Q701255Trigger - PreTriggerIn")
end

function Q701255Trigger:LightUpTriggerIn()
    print("Q701255Trigger - LightUpTriggerIn")
end

function Q701255Trigger:TriggerOut()
    print("Q701255Trigger - TriggerOut")
end

return Q701255Trigger
