require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006717Trigger = class("Q7006717Trigger", GadgetActorProxy)
Q7006717Trigger.defaultAlias = "Q7006717Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006717Trigger:OnPostDataPrepare()
    print("Q7006717Trigger - OnPostDataPrepare")
    this = self
end

function Q7006717Trigger:OnPostComponentPrepare()
    print("Q7006717Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(25, 96.35045, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006717Trigger:TriggerIn()
    print("Q7006717Trigger - TriggerIn")
    actorMgr:GetActor("70067"):PlayerEnterDungeonWithData(22, 1330, 7006717, 1, datas.TransmitData7006717, nil, nil)
end

function Q7006717Trigger:PreTriggerIn()
    print("Q7006717Trigger - PreTriggerIn")
end

function Q7006717Trigger:LightUpTriggerIn()
    print("Q7006717Trigger - LightUpTriggerIn")
end

function Q7006717Trigger:TriggerOut()
    print("Q7006717Trigger - TriggerOut")
end

return Q7006717Trigger
