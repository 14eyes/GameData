require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713020Trigger = class("Q7713020Trigger", GadgetActorProxy)
Q7713020Trigger.defaultAlias = "Q7713020Trigger"
local Q77130ClientConfig = require("Quest/Client/Q77130ClientConfig")

local this
local subIDs = Q77130ClientConfig.SubIDs
local datas = Q77130ClientConfig.Datas
local npcs = Q77130ClientConfig.Npcs
local points = Q77130ClientConfig.Points

function Q7713020Trigger:OnPostDataPrepare()
    print("Q7713020Trigger - OnPostDataPrepare")
    this = self
end

function Q7713020Trigger:OnPostComponentPrepare()
    print("Q7713020Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77130)
end

function Q7713020Trigger:TriggerIn()
    print("Q7713020Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713020})
    this:DestroySelf()
end

function Q7713020Trigger:PreTriggerIn()
    print("Q7713020Trigger - PreTriggerIn")
end

function Q7713020Trigger:LightUpTriggerIn()
    print("Q7713020Trigger - LightUpTriggerIn")
end

function Q7713020Trigger:TriggerOut()
    print("Q7713020Trigger - TriggerOut")
end

return Q7713020Trigger
