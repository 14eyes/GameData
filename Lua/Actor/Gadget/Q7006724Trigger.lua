require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006724Trigger = class("Q7006724Trigger", GadgetActorProxy)
Q7006724Trigger.defaultAlias = "Q7006724Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006724Trigger:OnPostDataPrepare()
    print("Q7006724Trigger - OnPostDataPrepare")
    this = self
end

function Q7006724Trigger:OnPostComponentPrepare()
    print("Q7006724Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006724Trigger:TriggerIn()
    print("Q7006724Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006724)
    this:DestroySelf()
end

function Q7006724Trigger:PreTriggerIn()
    print("Q7006724Trigger - PreTriggerIn")
end

function Q7006724Trigger:LightUpTriggerIn()
    print("Q7006724Trigger - LightUpTriggerIn")
end

function Q7006724Trigger:TriggerOut()
    print("Q7006724Trigger - TriggerOut")
end

return Q7006724Trigger
