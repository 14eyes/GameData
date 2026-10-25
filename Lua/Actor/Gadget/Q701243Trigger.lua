require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701243Trigger = class("Q701243Trigger", GadgetActorProxy)
Q701243Trigger.defaultAlias = "Q701243Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701243Trigger:OnPostDataPrepare()
    print("Q701243Trigger - OnPostDataPrepare")
    this = self
end

function Q701243Trigger:OnPostComponentPrepare()
    print("Q701243Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701243Trigger:TriggerIn()
    print("Q701243Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701243})
    this:DestroySelf()
end

function Q701243Trigger:PreTriggerIn()
    print("Q701243Trigger - PreTriggerIn")
end

function Q701243Trigger:LightUpTriggerIn()
    print("Q701243Trigger - LightUpTriggerIn")
end

function Q701243Trigger:TriggerOut()
    print("Q701243Trigger - TriggerOut")
end

return Q701243Trigger
