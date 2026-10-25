require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606801Trigger = class("Q7606801Trigger", GadgetActorProxy)
Q7606801Trigger.defaultAlias = "Q7606801Trigger"
local Q76068ClientConfig = require("Quest/Client/Q76068ClientConfig")

local this
local subIDs = Q76068ClientConfig.SubIDs
local npcs = Q76068ClientConfig.Npcs
local points = Q76068ClientConfig.Points

function Q7606801Trigger:OnPostDataPrepare()
    print("Q7606801Trigger - OnPostDataPrepare")
    this = self
end

function Q7606801Trigger:OnPostComponentPrepare()
    print("Q7606801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76068)
end

function Q7606801Trigger:TriggerIn()
    print("Q7606801Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7606801)
    this:DestroySelf()
end

function Q7606801Trigger:PreTriggerIn()
    print("Q7606801Trigger - PreTriggerIn")
end

function Q7606801Trigger:LightUpTriggerIn()
    print("Q7606801Trigger - LightUpTriggerIn")
end

function Q7606801Trigger:TriggerOut()
    print("Q7606801Trigger - TriggerOut")
end

return Q7606801Trigger
