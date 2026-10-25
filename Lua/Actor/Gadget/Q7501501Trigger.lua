require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501501Trigger = class("Q7501501Trigger", GadgetActorProxy)
Q7501501Trigger.defaultAlias = "Q7501501Trigger"
local Q75015ClientConfig = require("Quest/Client/Q75015ClientConfig")

local this
local subIDs = Q75015ClientConfig.SubIDs
local npcs = Q75015ClientConfig.Npcs

function Q7501501Trigger:OnPostDataPrepare()
    print("Q7501501Trigger - OnPostDataPrepare")
    this = self
end

function Q7501501Trigger:OnPostComponentPrepare()
    print("Q7501501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18.40995, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75015)
end

function Q7501501Trigger:TriggerIn()
    print("Q7501501Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7501501)
    this:DestroySelf()
end

function Q7501501Trigger:PreTriggerIn()
    print("Q7501501Trigger - PreTriggerIn")
end

function Q7501501Trigger:LightUpTriggerIn()
    print("Q7501501Trigger - LightUpTriggerIn")
end

function Q7501501Trigger:TriggerOut()
    print("Q7501501Trigger - TriggerOut")
end

return Q7501501Trigger
