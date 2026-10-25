require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606803Trigger = class("Q7606803Trigger", GadgetActorProxy)
Q7606803Trigger.defaultAlias = "Q7606803Trigger"
local Q76068ClientConfig = require("Quest/Client/Q76068ClientConfig")

local this
local subIDs = Q76068ClientConfig.SubIDs
local npcs = Q76068ClientConfig.Npcs
local points = Q76068ClientConfig.Points

function Q7606803Trigger:OnPostDataPrepare()
    print("Q7606803Trigger - OnPostDataPrepare")
    this = self
end

function Q7606803Trigger:OnPostComponentPrepare()
    print("Q7606803Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76068)
end

function Q7606803Trigger:TriggerIn()
    print("Q7606803Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7606803})
    this:DestroySelf()
end

function Q7606803Trigger:PreTriggerIn()
    print("Q7606803Trigger - PreTriggerIn")
end

function Q7606803Trigger:LightUpTriggerIn()
    print("Q7606803Trigger - LightUpTriggerIn")
end

function Q7606803Trigger:TriggerOut()
    print("Q7606803Trigger - TriggerOut")
end

return Q7606803Trigger
