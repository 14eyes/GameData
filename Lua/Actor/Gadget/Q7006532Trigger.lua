require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006532Trigger = class("Q7006532Trigger", GadgetActorProxy)
Q7006532Trigger.defaultAlias = "Q7006532Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006532Trigger:OnPostDataPrepare()
    print("Q7006532Trigger - OnPostDataPrepare")
    this = self
end

function Q7006532Trigger:OnPostComponentPrepare()
    print("Q7006532Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20.166315, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006532Trigger:TriggerIn()
    print("Q7006532Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006532)
    this:DestroySelf()
end

function Q7006532Trigger:PreTriggerIn()
    print("Q7006532Trigger - PreTriggerIn")
end

function Q7006532Trigger:LightUpTriggerIn()
    print("Q7006532Trigger - LightUpTriggerIn")
end

function Q7006532Trigger:TriggerOut()
    print("Q7006532Trigger - TriggerOut")
end

return Q7006532Trigger
