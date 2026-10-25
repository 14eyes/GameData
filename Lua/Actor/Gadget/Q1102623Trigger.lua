require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102623Trigger = class("Q1102623Trigger", GadgetActorProxy)
Q1102623Trigger.defaultAlias = "Q1102623Trigger"
local Q11026ClientConfig = require("Quest/Client/Q11026ClientConfig")

local subIDs = Q11026ClientConfig.SubIDs
local npcs = Q11026ClientConfig.Npcs
local gadgets = Q11026ClientConfig.Gadgets
local datas = Q11026ClientConfig.Datas

function Q1102623Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102623Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18.3459, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1102623Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1102623)
    self:DestroySelf()
end

function Q1102623Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102623Trigger
