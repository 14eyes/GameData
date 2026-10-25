require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701211Trigger = class("Q701211Trigger", GadgetActorProxy)
Q701211Trigger.defaultAlias = "Q701211Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701211Trigger:OnPostDataPrepare()
    print("Q701211Trigger - OnPostDataPrepare")
    this = self
end

function Q701211Trigger:OnPostComponentPrepare()
    print("Q701211Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701211Trigger:TriggerIn()
    print("Q701211Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701211})
    this:DestroySelf()
end

function Q701211Trigger:PreTriggerIn()
    print("Q701211Trigger - PreTriggerIn")
end

function Q701211Trigger:LightUpTriggerIn()
    print("Q701211Trigger - LightUpTriggerIn")
end

function Q701211Trigger:TriggerOut()
    print("Q701211Trigger - TriggerOut")
end

return Q701211Trigger
