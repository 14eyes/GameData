require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615703Trigger = class("Q7615703Trigger", GadgetActorProxy)
Q7615703Trigger.defaultAlias = "Q7615703Trigger"
local Q76157ClientConfig = require("Quest/Client/Q76157ClientConfig")

local this
local subIDs = Q76157ClientConfig.SubIDs
local npcs = Q76157ClientConfig.Npcs
local points = Q76157ClientConfig.Points

function Q7615703Trigger:OnPostDataPrepare()
    print("Q7615703Trigger - OnPostDataPrepare")
    this = self
end

function Q7615703Trigger:OnPostComponentPrepare()
    print("Q7615703Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76157)
end

function Q7615703Trigger:TriggerIn()
    print("Q7615703Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615703)
    this:DestroySelf()
end

function Q7615703Trigger:PreTriggerIn()
    print("Q7615703Trigger - PreTriggerIn")
end

function Q7615703Trigger:LightUpTriggerIn()
    print("Q7615703Trigger - LightUpTriggerIn")
end

function Q7615703Trigger:TriggerOut()
    print("Q7615703Trigger - TriggerOut")
end

return Q7615703Trigger
