require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612703Trigger = class("Q7612703Trigger", GadgetActorProxy)
Q7612703Trigger.defaultAlias = "Q7612703Trigger"
local Q76127ClientConfig = require("Quest/Client/Q76127ClientConfig")

local this
local subIDs = Q76127ClientConfig.SubIDs
local datas = Q76127ClientConfig.Datas
local npcs = Q76127ClientConfig.Npcs
local points = Q76127ClientConfig.Points

function Q7612703Trigger:OnPostDataPrepare()
    print("Q7612703Trigger - OnPostDataPrepare")
    this = self
end

function Q7612703Trigger:OnPostComponentPrepare()
    print("Q7612703Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76127)
end

function Q7612703Trigger:TriggerIn()
    print("Q7612703Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612703)
    this:DestroySelf()
end

function Q7612703Trigger:PreTriggerIn()
    print("Q7612703Trigger - PreTriggerIn")
end

function Q7612703Trigger:LightUpTriggerIn()
    print("Q7612703Trigger - LightUpTriggerIn")
end

function Q7612703Trigger:TriggerOut()
    print("Q7612703Trigger - TriggerOut")
end

return Q7612703Trigger
