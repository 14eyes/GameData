require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710205Trigger = class("Q7710205Trigger", GadgetActorProxy)
Q7710205Trigger.defaultAlias = "Q7710205Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710205Trigger:OnPostDataPrepare()
    print("Q7710205Trigger - OnPostDataPrepare")
    this = self
end

function Q7710205Trigger:OnPostComponentPrepare()
    print("Q7710205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710205Trigger:TriggerIn()
    print("Q7710205Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710205)
    this:DestroySelf()
end

function Q7710205Trigger:PreTriggerIn()
    print("Q7710205Trigger - PreTriggerIn")
end

function Q7710205Trigger:LightUpTriggerIn()
    print("Q7710205Trigger - LightUpTriggerIn")
end

function Q7710205Trigger:TriggerOut()
    print("Q7710205Trigger - TriggerOut")
end

return Q7710205Trigger
