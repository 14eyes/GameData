require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006708Trigger = class("Q7006708Trigger", GadgetActorProxy)
Q7006708Trigger.defaultAlias = "Q7006708Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006708Trigger:OnPostDataPrepare()
    print("Q7006708Trigger - OnPostDataPrepare")
    this = self
end

function Q7006708Trigger:OnPostComponentPrepare()
    print("Q7006708Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(25, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006708Trigger:TriggerIn()
    print("Q7006708Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006801)
    this:DestroySelf()
end

function Q7006708Trigger:PreTriggerIn()
    print("Q7006708Trigger - PreTriggerIn")
end

function Q7006708Trigger:LightUpTriggerIn()
    print("Q7006708Trigger - LightUpTriggerIn")
end

function Q7006708Trigger:TriggerOut()
    print("Q7006708Trigger - TriggerOut")
end

return Q7006708Trigger
