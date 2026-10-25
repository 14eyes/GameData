require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006722Trigger = class("Q7006722Trigger", GadgetActorProxy)
Q7006722Trigger.defaultAlias = "Q7006722Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006722Trigger:OnPostDataPrepare()
    print("Q7006722Trigger - OnPostDataPrepare")
    this = self
end

function Q7006722Trigger:OnPostComponentPrepare()
    print("Q7006722Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006722Trigger:TriggerIn()
    print("Q7006722Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006722)
    this:DestroySelf()
end

function Q7006722Trigger:PreTriggerIn()
    print("Q7006722Trigger - PreTriggerIn")
end

function Q7006722Trigger:LightUpTriggerIn()
    print("Q7006722Trigger - LightUpTriggerIn")
end

function Q7006722Trigger:TriggerOut()
    print("Q7006722Trigger - TriggerOut")
end

return Q7006722Trigger
