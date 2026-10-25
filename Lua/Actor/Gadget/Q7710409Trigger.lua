require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710409Trigger = class("Q7710409Trigger", GadgetActorProxy)
Q7710409Trigger.defaultAlias = "Q7710409Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710409Trigger:OnPostDataPrepare()
    print("Q7710409Trigger - OnPostDataPrepare")
    this = self
end

function Q7710409Trigger:OnPostComponentPrepare()
    print("Q7710409Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710409Trigger:TriggerIn()
    print("Q7710409Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710409)
    this:DestroySelf()
end

function Q7710409Trigger:PreTriggerIn()
    print("Q7710409Trigger - PreTriggerIn")
end

function Q7710409Trigger:LightUpTriggerIn()
    print("Q7710409Trigger - LightUpTriggerIn")
end

function Q7710409Trigger:TriggerOut()
    print("Q7710409Trigger - TriggerOut")
end

return Q7710409Trigger
