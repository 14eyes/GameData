require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701226Trigger = class("Q701226Trigger", GadgetActorProxy)
Q701226Trigger.defaultAlias = "Q701226Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701226Trigger:OnPostDataPrepare()
    print("Q701226Trigger - OnPostDataPrepare")
    this = self
end

function Q701226Trigger:OnPostComponentPrepare()
    print("Q701226Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3.7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701226Trigger:TriggerIn()
    print("Q701226Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701226})
    this:DestroySelf()
end

function Q701226Trigger:PreTriggerIn()
    print("Q701226Trigger - PreTriggerIn")
end

function Q701226Trigger:LightUpTriggerIn()
    print("Q701226Trigger - LightUpTriggerIn")
end

function Q701226Trigger:TriggerOut()
    print("Q701226Trigger - TriggerOut")
end

return Q701226Trigger
