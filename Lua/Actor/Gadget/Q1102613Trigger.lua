require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102613Trigger = class("Q1102613Trigger", GadgetActorProxy)
Q1102613Trigger.defaultAlias = "Q1102613Trigger"
local Q11026ClientConfig = require("Quest/Client/Q11026ClientConfig")

local subIDs = Q11026ClientConfig.SubIDs
local npcs = Q11026ClientConfig.Npcs
local gadgets = Q11026ClientConfig.Gadgets
local datas = Q11026ClientConfig.Datas

function Q1102613Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102613Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1102613Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1102613)
    self:DestroySelf()
end

function Q1102613Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102613Trigger
