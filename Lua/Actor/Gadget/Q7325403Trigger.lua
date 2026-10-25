require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325403Trigger = class("Q7325403Trigger", GadgetActorProxy)
Q7325403Trigger.defaultAlias = "Q7325403Trigger"
local Q73254ClientConfig = require("Quest/Client/Q73254ClientConfig")

local this
local subIDs = Q73254ClientConfig.SubIDs

function Q7325403Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325403Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7325403Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325403)
    this:DestroySelf()
end

function Q7325403Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7325403Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7325403Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325403Trigger
