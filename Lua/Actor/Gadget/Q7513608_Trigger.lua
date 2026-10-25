require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513608_Trigger = class("Q7513608_Trigger", GadgetActorProxy)
Q7513608_Trigger.defaultAlias = "Q7513608_Trigger"
local Q75136ClientConfig = require("Quest/Client/Q75136ClientConfig")

local this
local subIDs = Q75136ClientConfig.SubIDs
local npcs = Q75136ClientConfig.Npcs

function Q7513608_Trigger:OnPostDataPrepare()
    print("Q7513608_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513608_Trigger:OnPostComponentPrepare()
    print("Q7513608_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75136)
end

function Q7513608_Trigger:TriggerIn()
    print("Q7513608_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7513608)
    this:DestroySelf()
end

function Q7513608_Trigger:PreTriggerIn()
    print("Q7513608_Trigger - PreTriggerIn")
end

function Q7513608_Trigger:LightUpTriggerIn()
    print("Q7513608_Trigger - LightUpTriggerIn")
end

function Q7513608_Trigger:TriggerOut()
    print("Q7513608_Trigger - TriggerOut")
end

return Q7513608_Trigger
