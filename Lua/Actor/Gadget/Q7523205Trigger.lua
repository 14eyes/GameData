require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523205Trigger = class("Q7523205Trigger", GadgetActorProxy)
Q7523205Trigger.defaultAlias = "Q7523205Trigger"
local Q75232ClientConfig = require("Quest/Client/Q75232ClientConfig")

local this
local subIDs = Q75232ClientConfig.SubIDs
local npcs = Q75232ClientConfig.Npcs

function Q7523205Trigger:OnPostDataPrepare()
    print("Q7523205Trigger - OnPostDataPrepare")
    this = self
end

function Q7523205Trigger:OnPostComponentPrepare()
    print("Q7523205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75232)
end

function Q7523205Trigger:TriggerIn()
    print("Q7523205Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523205)
    this:DestroySelf()
end

function Q7523205Trigger:PreTriggerIn()
    print("Q7523205Trigger - PreTriggerIn")
end

function Q7523205Trigger:LightUpTriggerIn()
    print("Q7523205Trigger - LightUpTriggerIn")
end

function Q7523205Trigger:TriggerOut()
    print("Q7523205Trigger - TriggerOut")
end

return Q7523205Trigger
