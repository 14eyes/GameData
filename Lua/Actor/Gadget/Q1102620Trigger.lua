require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102620Trigger = class("Q1102620Trigger", GadgetActorProxy)
Q1102620Trigger.defaultAlias = "Q1102620Trigger"
local Q11026ClientConfig = require("Quest/Client/Q11026ClientConfig")

local subIDs = Q11026ClientConfig.SubIDs
local npcs = Q11026ClientConfig.Npcs
local gadgets = Q11026ClientConfig.Gadgets
local datas = Q11026ClientConfig.Datas

function Q1102620Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102620Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1102620Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1102623)
    self:DestroySelf()
end

function Q1102620Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102620Trigger
