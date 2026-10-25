require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006110Trigger = class("Q7006110Trigger", GadgetActorProxy)
Q7006110Trigger.defaultAlias = "Q7006110Trigger"
local Q70061ClientConfig = require("Quest/Client/Q70061ClientConfig")

local this
local subIDs = Q70061ClientConfig.SubIDs
local datas = Q70061ClientConfig.Datas
local npcs = Q70061ClientConfig.Npcs
local points = Q70061ClientConfig.Points

function Q7006110Trigger:OnPostDataPrepare()
    print("Q7006110Trigger - OnPostDataPrepare")
    this = self
end

function Q7006110Trigger:OnPostComponentPrepare()
    print("Q7006110Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70061)
end

function Q7006110Trigger:TriggerIn()
    print("Q7006110Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006110)
    this:DestroySelf()
end

function Q7006110Trigger:PreTriggerIn()
    print("Q7006110Trigger - PreTriggerIn")
end

function Q7006110Trigger:LightUpTriggerIn()
    print("Q7006110Trigger - LightUpTriggerIn")
end

function Q7006110Trigger:TriggerOut()
    print("Q7006110Trigger - TriggerOut")
end

return Q7006110Trigger
