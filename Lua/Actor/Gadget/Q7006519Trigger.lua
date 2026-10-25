require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006519Trigger = class("Q7006519Trigger", GadgetActorProxy)
Q7006519Trigger.defaultAlias = "Q7006519Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006519Trigger:OnPostDataPrepare()
    print("Q7006519Trigger - OnPostDataPrepare")
    this = self
end

function Q7006519Trigger:OnPostComponentPrepare()
    print("Q7006519Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006519Trigger:TriggerIn()
    print("Q7006519Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006519)
    this:DestroySelf()
end

function Q7006519Trigger:PreTriggerIn()
    print("Q7006519Trigger - PreTriggerIn")
end

function Q7006519Trigger:LightUpTriggerIn()
    print("Q7006519Trigger - LightUpTriggerIn")
end

function Q7006519Trigger:TriggerOut()
    print("Q7006519Trigger - TriggerOut")
end

return Q7006519Trigger
