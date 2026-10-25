require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006502Trigger = class("Q7006502Trigger", GadgetActorProxy)
Q7006502Trigger.defaultAlias = "Q7006502Trigger"
local Q70099ClientConfig = require("Quest/Client/Q70099ClientConfig")

local this
local subIDs = Q70099ClientConfig.SubIDs
local datas = Q70099ClientConfig.Datas
local npcs = Q70099ClientConfig.Npcs
local points = Q70099ClientConfig.Points

function Q7006502Trigger:OnPostDataPrepare()
    print("Q7006502Trigger - OnPostDataPrepare")
    this = self
end

function Q7006502Trigger:OnPostComponentPrepare()
    print("Q7006502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70099)
end

function Q7006502Trigger:TriggerIn()
    print("Q7006502Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006502)
    this:DestroySelf()
end

function Q7006502Trigger:PreTriggerIn()
    print("Q7006502Trigger - PreTriggerIn")
end

function Q7006502Trigger:LightUpTriggerIn()
    print("Q7006502Trigger - LightUpTriggerIn")
end

function Q7006502Trigger:TriggerOut()
    print("Q7006502Trigger - TriggerOut")
end

return Q7006502Trigger
