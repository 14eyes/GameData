require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615702Trigger = class("Q7615702Trigger", GadgetActorProxy)
Q7615702Trigger.defaultAlias = "Q7615702Trigger"
local Q76157ClientConfig = require("Quest/Client/Q76157ClientConfig")

local this
local subIDs = Q76157ClientConfig.SubIDs
local npcs = Q76157ClientConfig.Npcs
local points = Q76157ClientConfig.Points

function Q7615702Trigger:OnPostDataPrepare()
    print("Q7615702Trigger - OnPostDataPrepare")
    this = self
end

function Q7615702Trigger:OnPostComponentPrepare()
    print("Q7615702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76157)
end

function Q7615702Trigger:TriggerIn()
    print("Q7615702Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615702)
    this:DestroySelf()
end

function Q7615702Trigger:PreTriggerIn()
    print("Q7615702Trigger - PreTriggerIn")
end

function Q7615702Trigger:LightUpTriggerIn()
    print("Q7615702Trigger - LightUpTriggerIn")
end

function Q7615702Trigger:TriggerOut()
    print("Q7615702Trigger - TriggerOut")
end

return Q7615702Trigger
