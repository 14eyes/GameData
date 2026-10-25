require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7011201Trigger = class("Q7011201Trigger", GadgetActorProxy)
Q7011201Trigger.defaultAlias = "Q7011201Trigger"
local Q70112ClientConfig = require("Quest/Client/Q70112ClientConfig")

local this
local subIDs = Q70112ClientConfig.SubIDs
local npcs = Q70112ClientConfig.Npcs

function Q7011201Trigger:OnPostDataPrepare()
    print("Q7011201Trigger - OnPostDataPrepare")
    this = self
end

function Q7011201Trigger:OnPostComponentPrepare()
    print("Q7011201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(45.368584, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70112)
end

function Q7011201Trigger:TriggerIn()
    print("Q7011201Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7011201)
    this:DestroySelf()
end

function Q7011201Trigger:PreTriggerIn()
    print("Q7011201Trigger - PreTriggerIn")
end

function Q7011201Trigger:LightUpTriggerIn()
    print("Q7011201Trigger - LightUpTriggerIn")
end

function Q7011201Trigger:TriggerOut()
    print("Q7011201Trigger - TriggerOut")
end

return Q7011201Trigger
