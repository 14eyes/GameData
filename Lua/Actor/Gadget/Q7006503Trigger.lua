require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006503Trigger = class("Q7006503Trigger", GadgetActorProxy)
Q7006503Trigger.defaultAlias = "Q7006503Trigger"
local Q70099ClientConfig = require("Quest/Client/Q70099ClientConfig")

local this
local subIDs = Q70099ClientConfig.SubIDs
local datas = Q70099ClientConfig.Datas
local npcs = Q70099ClientConfig.Npcs
local points = Q70099ClientConfig.Points

function Q7006503Trigger:OnPostDataPrepare()
    print("Q7006503Trigger - OnPostDataPrepare")
    this = self
end

function Q7006503Trigger:OnPostComponentPrepare()
    print("Q7006503Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70099)
end

function Q7006503Trigger:TriggerIn()
    print("Q7006503Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006503)
    this:DestroySelf()
end

function Q7006503Trigger:PreTriggerIn()
    print("Q7006503Trigger - PreTriggerIn")
end

function Q7006503Trigger:LightUpTriggerIn()
    print("Q7006503Trigger - LightUpTriggerIn")
end

function Q7006503Trigger:TriggerOut()
    print("Q7006503Trigger - TriggerOut")
end

return Q7006503Trigger
