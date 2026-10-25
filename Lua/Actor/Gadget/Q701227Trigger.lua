require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701227Trigger = class("Q701227Trigger", GadgetActorProxy)
Q701227Trigger.defaultAlias = "Q701227Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701227Trigger:OnPostDataPrepare()
    print("Q701227Trigger - OnPostDataPrepare")
    this = self
end

function Q701227Trigger:OnPostComponentPrepare()
    print("Q701227Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40.065983, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701227Trigger:TriggerIn()
    print("Q701227Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701227})
    this:DestroySelf()
end

function Q701227Trigger:PreTriggerIn()
    print("Q701227Trigger - PreTriggerIn")
end

function Q701227Trigger:LightUpTriggerIn()
    print("Q701227Trigger - LightUpTriggerIn")
end

function Q701227Trigger:TriggerOut()
    print("Q701227Trigger - TriggerOut")
end

return Q701227Trigger
