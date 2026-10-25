require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612707Trigger = class("Q7612707Trigger", GadgetActorProxy)
Q7612707Trigger.defaultAlias = "Q7612707Trigger"
local Q76127ClientConfig = require("Quest/Client/Q76127ClientConfig")

local this
local subIDs = Q76127ClientConfig.SubIDs
local datas = Q76127ClientConfig.Datas
local npcs = Q76127ClientConfig.Npcs
local points = Q76127ClientConfig.Points

function Q7612707Trigger:OnPostDataPrepare()
    print("Q7612707Trigger - OnPostDataPrepare")
    this = self
end

function Q7612707Trigger:OnPostComponentPrepare()
    print("Q7612707Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76127)
end

function Q7612707Trigger:TriggerIn()
    print("Q7612707Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612707)
    this:DestroySelf()
end

function Q7612707Trigger:PreTriggerIn()
    print("Q7612707Trigger - PreTriggerIn")
end

function Q7612707Trigger:LightUpTriggerIn()
    print("Q7612707Trigger - LightUpTriggerIn")
end

function Q7612707Trigger:TriggerOut()
    print("Q7612707Trigger - TriggerOut")
end

return Q7612707Trigger
