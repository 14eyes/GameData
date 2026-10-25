require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102614Trigger = class("Q1102614Trigger", GadgetActorProxy)
Q1102614Trigger.defaultAlias = "Q1102614Trigger"
local Q11026ClientConfig = require("Quest/Client/Q11026ClientConfig")

local subIDs = Q11026ClientConfig.SubIDs
local npcs = Q11026ClientConfig.Npcs
local gadgets = Q11026ClientConfig.Gadgets
local datas = Q11026ClientConfig.Datas

function Q1102614Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102614Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6.887189, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1102614Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11026"):FinishQuestID(false, 1102614)
    self:DestroySelf()
end

function Q1102614Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102614Trigger
