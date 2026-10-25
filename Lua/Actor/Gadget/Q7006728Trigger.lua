require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006728Trigger = class("Q7006728Trigger", GadgetActorProxy)
Q7006728Trigger.defaultAlias = "Q7006728Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006728Trigger:OnPostDataPrepare()
    print("Q7006728Trigger - OnPostDataPrepare")
    this = self
end

function Q7006728Trigger:OnPostComponentPrepare()
    print("Q7006728Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(9, 2, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006728Trigger:TriggerIn()
    print("Q7006728Trigger - TriggerIn")
    actorMgr:GetActor("70067"):TransmitPlayerByQuestId(7006728, 5, nil, nil, nil)
    this:DestroySelf()
end

function Q7006728Trigger:PreTriggerIn()
    print("Q7006728Trigger - PreTriggerIn")
end

function Q7006728Trigger:LightUpTriggerIn()
    print("Q7006728Trigger - LightUpTriggerIn")
end

function Q7006728Trigger:TriggerOut()
    print("Q7006728Trigger - TriggerOut")
end

return Q7006728Trigger
