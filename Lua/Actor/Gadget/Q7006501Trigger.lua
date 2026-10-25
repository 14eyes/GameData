require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006501Trigger = class("Q7006501Trigger", GadgetActorProxy)
Q7006501Trigger.defaultAlias = "Q7006501Trigger"
local Q70099ClientConfig = require("Quest/Client/Q70099ClientConfig")

local this
local subIDs = Q70099ClientConfig.SubIDs
local datas = Q70099ClientConfig.Datas
local npcs = Q70099ClientConfig.Npcs
local points = Q70099ClientConfig.Points

function Q7006501Trigger:OnPostDataPrepare()
    print("Q7006501Trigger - OnPostDataPrepare")
    this = self
end

function Q7006501Trigger:OnPostComponentPrepare()
    print("Q7006501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(95, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70099)
end

function Q7006501Trigger:TriggerIn()
    print("Q7006501Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006501)
    this:DestroySelf()
end

function Q7006501Trigger:PreTriggerIn()
    print("Q7006501Trigger - PreTriggerIn")
end

function Q7006501Trigger:LightUpTriggerIn()
    print("Q7006501Trigger - LightUpTriggerIn")
end

function Q7006501Trigger:TriggerOut()
    print("Q7006501Trigger - TriggerOut")
end

return Q7006501Trigger
