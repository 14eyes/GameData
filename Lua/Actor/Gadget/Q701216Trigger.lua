require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701216Trigger = class("Q701216Trigger", GadgetActorProxy)
Q701216Trigger.defaultAlias = "Q701216Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701216Trigger:OnPostDataPrepare()
    print("Q701216Trigger - OnPostDataPrepare")
    this = self
end

function Q701216Trigger:OnPostComponentPrepare()
    print("Q701216Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8.7230835, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701216Trigger:TriggerIn()
    print("Q701216Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701216})
    this:DestroySelf()
end

function Q701216Trigger:PreTriggerIn()
    print("Q701216Trigger - PreTriggerIn")
end

function Q701216Trigger:LightUpTriggerIn()
    print("Q701216Trigger - LightUpTriggerIn")
end

function Q701216Trigger:TriggerOut()
    print("Q701216Trigger - TriggerOut")
end

return Q701216Trigger
