require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006557Trigger = class("Q7006557Trigger", GadgetActorProxy)
Q7006557Trigger.defaultAlias = "Q7006557Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006557Trigger:OnPostDataPrepare()
    print("Q7006557Trigger - OnPostDataPrepare")
    this = self
end

function Q7006557Trigger:OnPostComponentPrepare()
    print("Q7006557Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006557Trigger:TriggerIn()
    print("Q7006557Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006557)
    this:DestroySelf()
end

function Q7006557Trigger:PreTriggerIn()
    print("Q7006557Trigger - PreTriggerIn")
end

function Q7006557Trigger:LightUpTriggerIn()
    print("Q7006557Trigger - LightUpTriggerIn")
end

function Q7006557Trigger:TriggerOut()
    print("Q7006557Trigger - TriggerOut")
end

return Q7006557Trigger
