require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713008Trigger = class("Q7713008Trigger", GadgetActorProxy)
Q7713008Trigger.defaultAlias = "Q7713008Trigger"
local Q77130ClientConfig = require("Quest/Client/Q77130ClientConfig")

local this
local subIDs = Q77130ClientConfig.SubIDs
local datas = Q77130ClientConfig.Datas
local npcs = Q77130ClientConfig.Npcs
local points = Q77130ClientConfig.Points

function Q7713008Trigger:OnPostDataPrepare()
    print("Q7713008Trigger - OnPostDataPrepare")
    this = self
end

function Q7713008Trigger:OnPostComponentPrepare()
    print("Q7713008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77130)
end

function Q7713008Trigger:TriggerIn()
    print("Q7713008Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713008})
    this:DestroySelf()
end

function Q7713008Trigger:PreTriggerIn()
    print("Q7713008Trigger - PreTriggerIn")
end

function Q7713008Trigger:LightUpTriggerIn()
    print("Q7713008Trigger - LightUpTriggerIn")
end

function Q7713008Trigger:TriggerOut()
    print("Q7713008Trigger - TriggerOut")
end

return Q7713008Trigger
