require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006712Trigger = class("Q7006712Trigger", GadgetActorProxy)
Q7006712Trigger.defaultAlias = "Q7006712Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006712Trigger:OnPostDataPrepare()
    print("Q7006712Trigger - OnPostDataPrepare")
    this = self
end

function Q7006712Trigger:OnPostComponentPrepare()
    print("Q7006712Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(12, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006712Trigger:TriggerIn()
    print("Q7006712Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006727)
    this:DestroySelf()
end

function Q7006712Trigger:PreTriggerIn()
    print("Q7006712Trigger - PreTriggerIn")
end

function Q7006712Trigger:LightUpTriggerIn()
    print("Q7006712Trigger - LightUpTriggerIn")
end

function Q7006712Trigger:TriggerOut()
    print("Q7006712Trigger - TriggerOut")
end

return Q7006712Trigger
