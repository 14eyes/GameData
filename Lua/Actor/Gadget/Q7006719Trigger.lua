require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006719Trigger = class("Q7006719Trigger", GadgetActorProxy)
Q7006719Trigger.defaultAlias = "Q7006719Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006719Trigger:OnPostDataPrepare()
    print("Q7006719Trigger - OnPostDataPrepare")
    this = self
end

function Q7006719Trigger:OnPostComponentPrepare()
    print("Q7006719Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006719Trigger:TriggerIn()
    print("Q7006719Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006719)
    this:DestroySelf()
end

function Q7006719Trigger:PreTriggerIn()
    print("Q7006719Trigger - PreTriggerIn")
end

function Q7006719Trigger:LightUpTriggerIn()
    print("Q7006719Trigger - LightUpTriggerIn")
end

function Q7006719Trigger:TriggerOut()
    print("Q7006719Trigger - TriggerOut")
end

return Q7006719Trigger
