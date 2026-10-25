require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006101Trigger = class("Q7006101Trigger", GadgetActorProxy)
Q7006101Trigger.defaultAlias = "Q7006101Trigger"
local Q70061ClientConfig = require("Quest/Client/Q70061ClientConfig")

local this
local subIDs = Q70061ClientConfig.SubIDs
local datas = Q70061ClientConfig.Datas
local npcs = Q70061ClientConfig.Npcs
local points = Q70061ClientConfig.Points

function Q7006101Trigger:OnPostDataPrepare()
    print("Q7006101Trigger - OnPostDataPrepare")
    this = self
end

function Q7006101Trigger:OnPostComponentPrepare()
    print("Q7006101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70061)
end

function Q7006101Trigger:TriggerIn()
    print("Q7006101Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006101)
    this:DestroySelf()
end

function Q7006101Trigger:PreTriggerIn()
    print("Q7006101Trigger - PreTriggerIn")
end

function Q7006101Trigger:LightUpTriggerIn()
    print("Q7006101Trigger - LightUpTriggerIn")
end

function Q7006101Trigger:TriggerOut()
    print("Q7006101Trigger - TriggerOut")
end

return Q7006101Trigger
