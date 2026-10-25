require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007609_Trigger = class("Q4007609_Trigger", GadgetActorProxy)
Q4007609_Trigger.defaultAlias = "Q4007609_Trigger"
local Q40076ClientConfig = require("Quest/Client/Q40076ClientConfig")

local subIDs = Q40076ClientConfig.SubIDs
local npcs = Q40076ClientConfig.Npcs
local datas = Q40076ClientConfig.Datas

function Q4007609_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007609_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(35.57011, 25.38543, 9.653865, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007609_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40076")
    actor:CreateQuestNpcById(4007609, npcs.Npc10095Data.id, 1)
    actor:RequestInteraction(npcs.Npc10095Data.alias)
    self:DestroySelf()
end

function Q4007609_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007609_Trigger
