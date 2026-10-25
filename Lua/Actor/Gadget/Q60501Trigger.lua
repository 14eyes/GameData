require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60501Trigger = class("Q60501Trigger", GadgetActorProxy)
Q60501Trigger.defaultAlias = "Q60501Trigger"
local Q605ClientConfig = require("Quest/Client/Q605ClientConfig")

local this
local subIDs = Q605ClientConfig.SubIDs
local npcs = Q605ClientConfig.Npcs

function Q60501Trigger:OnPostDataPrepare()
    print("Q60501Trigger - OnPostDataPrepare")
    this = self
end

function Q60501Trigger:OnPostComponentPrepare()
    print("Q60501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 605)
end

function Q60501Trigger:TriggerIn()
    print("Q60501Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 60501)
    this:DestroySelf()
end

function Q60501Trigger:PreTriggerIn()
    print("Q60501Trigger - PreTriggerIn")
end

function Q60501Trigger:LightUpTriggerIn()
    print("Q60501Trigger - LightUpTriggerIn")
end

function Q60501Trigger:TriggerOut()
    print("Q60501Trigger - TriggerOut")
end

return Q60501Trigger
