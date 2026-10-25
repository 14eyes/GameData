require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006701Trigger = class("Q7006701Trigger", GadgetActorProxy)
Q7006701Trigger.defaultAlias = "Q7006701Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006701Trigger:OnPostDataPrepare()
    print("Q7006701Trigger - OnPostDataPrepare")
    this = self
end

function Q7006701Trigger:OnPostComponentPrepare()
    print("Q7006701Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 8.610882, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006701Trigger:TriggerIn()
    print("Q7006701Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006701)
    this:DestroySelf()
end

function Q7006701Trigger:PreTriggerIn()
    print("Q7006701Trigger - PreTriggerIn")
end

function Q7006701Trigger:LightUpTriggerIn()
    print("Q7006701Trigger - LightUpTriggerIn")
end

function Q7006701Trigger:TriggerOut()
    print("Q7006701Trigger - TriggerOut")
end

return Q7006701Trigger
