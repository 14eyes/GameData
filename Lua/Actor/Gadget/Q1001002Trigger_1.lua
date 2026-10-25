require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001002Trigger_1 = class("Q1001002Trigger_1", GadgetActorProxy)
Q1001002Trigger_1.defaultAlias = "Q1001002Trigger_1"
local Q10010ClientConfig = require("Quest/Client/Q10010ClientConfig")

local this
local subIDs = Q10010ClientConfig.SubIDs
local npcs = Q10010ClientConfig.Npcs
local points = Q10010ClientConfig.Points

function Q1001002Trigger_1:OnPostDataPrepare()
    print("Q1001002Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1001002Trigger_1:OnPostComponentPrepare()
    print("Q1001002Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(33, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10010)
end

function Q1001002Trigger_1:TriggerIn()
    print("Q1001002Trigger_1 - TriggerIn")
    actorUtils.FinishQuestID(false, 1001002)
    this:DestroySelf()
end

function Q1001002Trigger_1:PreTriggerIn()
    print("Q1001002Trigger_1 - PreTriggerIn")
end

function Q1001002Trigger_1:LightUpTriggerIn()
    print("Q1001002Trigger_1 - LightUpTriggerIn")
end

function Q1001002Trigger_1:TriggerOut()
    print("Q1001002Trigger_1 - TriggerOut")
end

return Q1001002Trigger_1
