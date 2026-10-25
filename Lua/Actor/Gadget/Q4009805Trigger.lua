require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009805Trigger = class("Q4009805Trigger", GadgetActorProxy)
Q4009805Trigger.defaultAlias = "Q4009805Trigger"
local Q40098ClientConfig = require("Quest/Client/Q40098ClientConfig")

local this
local subIDs = Q40098ClientConfig.SubIDs
local npcs = Q40098ClientConfig.Npcs
local datas = Q40098ClientConfig.Datas

function Q4009805Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4009805Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(8, 3, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4009805Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40098")
    actor:CreateQuestNpcById(4009805, npcs.Npc1018Data.id, 0)
    actor:RequestInteraction(npcs.Npc1018Data.alias)
    this:DestroySelf()
end

function Q4009805Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4009805Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4009805Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4009805Trigger
