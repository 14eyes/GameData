require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710225Trigger = class("Q7710225Trigger", GadgetActorProxy)
Q7710225Trigger.defaultAlias = "Q7710225Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710225Trigger:OnPostDataPrepare()
    print("Q7710225Trigger - OnPostDataPrepare")
    this = self
end

function Q7710225Trigger:OnPostComponentPrepare()
    print("Q7710225Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(6, 6, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710225Trigger:TriggerIn()
    print("Q7710225Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710225)
    this:DestroySelf()
end

function Q7710225Trigger:PreTriggerIn()
    print("Q7710225Trigger - PreTriggerIn")
end

function Q7710225Trigger:LightUpTriggerIn()
    print("Q7710225Trigger - LightUpTriggerIn")
end

function Q7710225Trigger:TriggerOut()
    print("Q7710225Trigger - TriggerOut")
end

return Q7710225Trigger
