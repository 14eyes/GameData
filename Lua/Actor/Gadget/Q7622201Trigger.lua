require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7622201Trigger = class("Q7622201Trigger", GadgetActorProxy)
Q7622201Trigger.defaultAlias = "Q7622201Trigger"
local Q76222ClientConfig = require("Quest/Client/Q76222ClientConfig")

local this
local subIDs = Q76222ClientConfig.SubIDs
local npcs = Q76222ClientConfig.Npcs

function Q7622201Trigger:OnPostDataPrepare()
    print("Q7622201Trigger - OnPostDataPrepare")
    this = self
end

function Q7622201Trigger:OnPostComponentPrepare()
    print("Q7622201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76222)
end

function Q7622201Trigger:TriggerIn()
    print("Q7622201Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7622201})
    this:DestroySelf()
end

function Q7622201Trigger:PreTriggerIn()
    print("Q7622201Trigger - PreTriggerIn")
end

function Q7622201Trigger:LightUpTriggerIn()
    print("Q7622201Trigger - LightUpTriggerIn")
end

function Q7622201Trigger:TriggerOut()
    print("Q7622201Trigger - TriggerOut")
end

return Q7622201Trigger
