require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007501Trigger = class("Q7007501Trigger", GadgetActorProxy)
Q7007501Trigger.defaultAlias = "Q7007501Trigger"
local Q70075ClientConfig = require("Quest/Client/Q70075ClientConfig")

local this
local subIDs = Q70075ClientConfig.SubIDs

function Q7007501Trigger:OnPostDataPrepare()
    print("Q7007501Trigger - OnPostDataPrepare")
    this = self
end

function Q7007501Trigger:OnPostComponentPrepare()
    print("Q7007501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70075)
end

function Q7007501Trigger:TriggerIn()
    print("Q7007501Trigger - TriggerIn")
end

function Q7007501Trigger:PreTriggerIn()
    print("Q7007501Trigger - PreTriggerIn")
end

function Q7007501Trigger:LightUpTriggerIn()
    print("Q7007501Trigger - LightUpTriggerIn")
end

function Q7007501Trigger:TriggerOut()
    print("Q7007501Trigger - TriggerOut")
    actorUtils.FinishQuestID(false, 7007501)
    this:DestroySelf()
end

return Q7007501Trigger
