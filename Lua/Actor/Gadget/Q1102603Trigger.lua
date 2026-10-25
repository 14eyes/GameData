require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102603Trigger = class("Q1102603Trigger", GadgetActorProxy)
Q1102603Trigger.defaultAlias = "Q1102603Trigger"
local Q11026ClientConfig = require("Quest/Client/Q11026ClientConfig")

local subIDs = Q11026ClientConfig.SubIDs
local npcs = Q11026ClientConfig.Npcs
local gadgets = Q11026ClientConfig.Gadgets
local datas = Q11026ClientConfig.Datas

function Q1102603Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102603Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(23, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1102603Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1102603)
    self:DestroySelf()
end

function Q1102603Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102603Trigger
