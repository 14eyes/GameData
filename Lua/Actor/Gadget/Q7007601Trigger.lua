require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007601Trigger = class("Q7007601Trigger", GadgetActorProxy)
Q7007601Trigger.defaultAlias = "Q7007601Trigger"
local Q70076ClientConfig = require("Quest/Client/Q70076ClientConfig")

local this
local subIDs = Q70076ClientConfig.SubIDs
local datas = Q70076ClientConfig.Datas
local points = Q70076ClientConfig.Points

function Q7007601Trigger:OnPostDataPrepare()
    print("Q7007601Trigger - OnPostDataPrepare")
    this = self
end

function Q7007601Trigger:OnPostComponentPrepare()
    print("Q7007601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70076)
end

function Q7007601Trigger:TriggerIn()
    print("Q7007601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006729)
    this:DestroySelf()
end

function Q7007601Trigger:PreTriggerIn()
    print("Q7007601Trigger - PreTriggerIn")
end

function Q7007601Trigger:LightUpTriggerIn()
    print("Q7007601Trigger - LightUpTriggerIn")
end

function Q7007601Trigger:TriggerOut()
    print("Q7007601Trigger - TriggerOut")
end

return Q7007601Trigger
