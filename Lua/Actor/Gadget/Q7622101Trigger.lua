require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7622101Trigger = class("Q7622101Trigger", GadgetActorProxy)
Q7622101Trigger.defaultAlias = "Q7622101Trigger"
local Q76221ClientConfig = require("Quest/Client/Q76221ClientConfig")

local this
local subIDs = Q76221ClientConfig.SubIDs
local npcs = Q76221ClientConfig.Npcs
local points = Q76221ClientConfig.Points

function Q7622101Trigger:OnPostDataPrepare()
    print("Q7622101Trigger - OnPostDataPrepare")
    this = self
end

function Q7622101Trigger:OnPostComponentPrepare()
    print("Q7622101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76221)
end

function Q7622101Trigger:TriggerIn()
    print("Q7622101Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7622101})
    this:DestroySelf()
end

function Q7622101Trigger:PreTriggerIn()
    print("Q7622101Trigger - PreTriggerIn")
end

function Q7622101Trigger:LightUpTriggerIn()
    print("Q7622101Trigger - LightUpTriggerIn")
end

function Q7622101Trigger:TriggerOut()
    print("Q7622101Trigger - TriggerOut")
end

return Q7622101Trigger
