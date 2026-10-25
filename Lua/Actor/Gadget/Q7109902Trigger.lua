require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7109902Trigger = class("Q7109902Trigger", GadgetActorProxy)
Q7109902Trigger.defaultAlias = "Q7109902Trigger"
local Q71099ClientConfig = require("Quest/Client/Q71099ClientConfig")

local subIDs = Q71099ClientConfig.SubIDs
local npcs = Q71099ClientConfig.Npcs
local gadgets = Q71099ClientConfig.Gadgets

function Q7109902Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7109902Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(11.4568, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7109902Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7109902)
    self:DestroySelf()
end

function Q7109902Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7109902Trigger
