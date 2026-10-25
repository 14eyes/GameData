require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701911Trigger = class("Q701911Trigger", GadgetActorProxy)
Q701911Trigger.defaultAlias = "Q701911Trigger"
local Q7019ClientConfig = require("Quest/Client/Q7019ClientConfig")

local this
local subIDs = Q7019ClientConfig.SubIDs
local datas = Q7019ClientConfig.Datas
local npcs = Q7019ClientConfig.Npcs
local points = Q7019ClientConfig.Points

function Q701911Trigger:OnPostDataPrepare()
    print("Q701911Trigger - OnPostDataPrepare")
    this = self
end

function Q701911Trigger:OnPostComponentPrepare()
    print("Q701911Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7019)
end

function Q701911Trigger:TriggerIn()
    print("Q701911Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701911})
    this:DestroySelf()
end

function Q701911Trigger:PreTriggerIn()
    print("Q701911Trigger - PreTriggerIn")
end

function Q701911Trigger:LightUpTriggerIn()
    print("Q701911Trigger - LightUpTriggerIn")
end

function Q701911Trigger:TriggerOut()
    print("Q701911Trigger - TriggerOut")
end

return Q701911Trigger
