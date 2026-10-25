require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7622301Trigger = class("Q7622301Trigger", GadgetActorProxy)
Q7622301Trigger.defaultAlias = "Q7622301Trigger"
local Q76223ClientConfig = require("Quest/Client/Q76223ClientConfig")

local this
local subIDs = Q76223ClientConfig.SubIDs
local npcs = Q76223ClientConfig.Npcs
local points = Q76223ClientConfig.Points

function Q7622301Trigger:OnPostDataPrepare()
    print("Q7622301Trigger - OnPostDataPrepare")
    this = self
end

function Q7622301Trigger:OnPostComponentPrepare()
    print("Q7622301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76223)
end

function Q7622301Trigger:TriggerIn()
    print("Q7622301Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7622301})
    this:DestroySelf()
end

function Q7622301Trigger:PreTriggerIn()
    print("Q7622301Trigger - PreTriggerIn")
end

function Q7622301Trigger:LightUpTriggerIn()
    print("Q7622301Trigger - LightUpTriggerIn")
end

function Q7622301Trigger:TriggerOut()
    print("Q7622301Trigger - TriggerOut")
end

return Q7622301Trigger
