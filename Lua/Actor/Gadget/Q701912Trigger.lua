require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701912Trigger = class("Q701912Trigger", GadgetActorProxy)
Q701912Trigger.defaultAlias = "Q701912Trigger"
local Q7019ClientConfig = require("Quest/Client/Q7019ClientConfig")

local this
local subIDs = Q7019ClientConfig.SubIDs
local datas = Q7019ClientConfig.Datas
local npcs = Q7019ClientConfig.Npcs
local points = Q7019ClientConfig.Points

function Q701912Trigger:OnPostDataPrepare()
    print("Q701912Trigger - OnPostDataPrepare")
    this = self
end

function Q701912Trigger:OnPostComponentPrepare()
    print("Q701912Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7019)
end

function Q701912Trigger:TriggerIn()
    print("Q701912Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701912})
    this:DestroySelf()
end

function Q701912Trigger:PreTriggerIn()
    print("Q701912Trigger - PreTriggerIn")
end

function Q701912Trigger:LightUpTriggerIn()
    print("Q701912Trigger - LightUpTriggerIn")
end

function Q701912Trigger:TriggerOut()
    print("Q701912Trigger - TriggerOut")
end

return Q701912Trigger
