require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006716Trigger = class("Q7006716Trigger", GadgetActorProxy)
Q7006716Trigger.defaultAlias = "Q7006716Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006716Trigger:OnPostDataPrepare()
    print("Q7006716Trigger - OnPostDataPrepare")
    this = self
end

function Q7006716Trigger:OnPostComponentPrepare()
    print("Q7006716Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(35, 172.00792, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006716Trigger:TriggerIn()
    print("Q7006716Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006716)
    this:DestroySelf()
end

function Q7006716Trigger:PreTriggerIn()
    print("Q7006716Trigger - PreTriggerIn")
end

function Q7006716Trigger:LightUpTriggerIn()
    print("Q7006716Trigger - LightUpTriggerIn")
end

function Q7006716Trigger:TriggerOut()
    print("Q7006716Trigger - TriggerOut")
end

return Q7006716Trigger
