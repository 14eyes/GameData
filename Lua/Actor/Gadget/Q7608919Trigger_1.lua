require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608919Trigger_1 = class("Q7608919Trigger_1", GadgetActorProxy)
Q7608919Trigger_1.defaultAlias = "Q7608919Trigger_1"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608919Trigger_1:OnPostDataPrepare()
    print("Q7608919Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7608919Trigger_1:OnPostComponentPrepare()
    print("Q7608919Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608919Trigger_1:TriggerIn()
    print("Q7608919Trigger_1 - TriggerIn")
    actorUtils.FinishQuestID(false, 7608919)
    this:DestroySelf()
end

function Q7608919Trigger_1:PreTriggerIn()
    print("Q7608919Trigger_1 - PreTriggerIn")
end

function Q7608919Trigger_1:LightUpTriggerIn()
    print("Q7608919Trigger_1 - LightUpTriggerIn")
end

function Q7608919Trigger_1:TriggerOut()
    print("Q7608919Trigger_1 - TriggerOut")
end

return Q7608919Trigger_1
