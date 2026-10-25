require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102612Trigger = class("Q1102612Trigger", GadgetActorProxy)
Q1102612Trigger.defaultAlias = "Q1102612Trigger"
local Q11026ClientConfig = require("Quest/Client/Q11026ClientConfig")

local subIDs = Q11026ClientConfig.SubIDs
local npcs = Q11026ClientConfig.Npcs
local gadgets = Q11026ClientConfig.Gadgets
local datas = Q11026ClientConfig.Datas

function Q1102612Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102612Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(6.97205, 38.35269, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1102612Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("11026")
    actor:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    actor:CreateQuestNpcById(1102612, npcs.Npc1048Data.id, 1)
    actor:RequestInteraction(npcs.Npc1048Data.alias)
    self:DestroySelf()
end

function Q1102612Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102612Trigger
