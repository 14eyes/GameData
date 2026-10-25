require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713002Trigger = class("Q7713002Trigger", GadgetActorProxy)
Q7713002Trigger.defaultAlias = "Q7713002Trigger"
local Q77130ClientConfig = require("Quest/Client/Q77130ClientConfig")

local this
local subIDs = Q77130ClientConfig.SubIDs
local datas = Q77130ClientConfig.Datas
local npcs = Q77130ClientConfig.Npcs
local points = Q77130ClientConfig.Points

function Q7713002Trigger:OnPostDataPrepare()
    print("Q7713002Trigger - OnPostDataPrepare")
    this = self
end

function Q7713002Trigger:OnPostComponentPrepare()
    print("Q7713002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77130)
end

function Q7713002Trigger:TriggerIn()
    print("Q7713002Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713002})
    this:DestroySelf()
end

function Q7713002Trigger:PreTriggerIn()
    print("Q7713002Trigger - PreTriggerIn")
end

function Q7713002Trigger:LightUpTriggerIn()
    print("Q7713002Trigger - LightUpTriggerIn")
end

function Q7713002Trigger:TriggerOut()
    print("Q7713002Trigger - TriggerOut")
end

return Q7713002Trigger
