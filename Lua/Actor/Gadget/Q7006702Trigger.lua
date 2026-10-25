require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006702Trigger = class("Q7006702Trigger", GadgetActorProxy)
Q7006702Trigger.defaultAlias = "Q7006702Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006702Trigger:OnPostDataPrepare()
    print("Q7006702Trigger - OnPostDataPrepare")
    this = self
end

function Q7006702Trigger:OnPostComponentPrepare()
    print("Q7006702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006702Trigger:TriggerIn()
    print("Q7006702Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006702)
    this:DestroySelf()
end

function Q7006702Trigger:PreTriggerIn()
    print("Q7006702Trigger - PreTriggerIn")
end

function Q7006702Trigger:LightUpTriggerIn()
    print("Q7006702Trigger - LightUpTriggerIn")
end

function Q7006702Trigger:TriggerOut()
    print("Q7006702Trigger - TriggerOut")
end

return Q7006702Trigger
