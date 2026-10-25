require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102615Trigger = class("Q1102615Trigger", GadgetActorProxy)
Q1102615Trigger.defaultAlias = "Q1102615Trigger"
local Q11026ClientConfig = require("Quest/Client/Q11026ClientConfig")

local subIDs = Q11026ClientConfig.SubIDs
local npcs = Q11026ClientConfig.Npcs
local gadgets = Q11026ClientConfig.Gadgets
local datas = Q11026ClientConfig.Datas

function Q1102615Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102615Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(24.4922, 20.45198, 9.89453, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1102615Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11026"):RequestInteraction(npcs.Npc1048Data.alias)
    self:DestroySelf()
end

function Q1102615Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102615Trigger
