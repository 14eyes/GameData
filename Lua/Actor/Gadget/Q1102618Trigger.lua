require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102618Trigger = class("Q1102618Trigger", GadgetActorProxy)
Q1102618Trigger.defaultAlias = "Q1102618Trigger"
local Q11026ClientConfig = require("Quest/Client/Q11026ClientConfig")

local subIDs = Q11026ClientConfig.SubIDs
local npcs = Q11026ClientConfig.Npcs
local gadgets = Q11026ClientConfig.Gadgets
local datas = Q11026ClientConfig.Datas

function Q1102618Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102618Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(31.67529, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1102618Trigger:TriggerIn()
    print("TriggerIn")
end

function Q1102618Trigger:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("11026")
    actor:SafeDestroyQuestNpc(npcs.Npc2003Data.alias, 3)
    actor:SafeDestroyQuestNpc(npcs.Npc12499Data.alias, 3)
    actor:SafeDestroyQuestNpc(npcs.Npc12500Data.alias, 3)
    self:DestroySelf()
end

return Q1102618Trigger
