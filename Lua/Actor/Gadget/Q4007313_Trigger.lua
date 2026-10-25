require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007313_Trigger = class("Q4007313_Trigger", GadgetActorProxy)
Q4007313_Trigger.defaultAlias = "Q4007313_Trigger"
local Q40073ClientConfig = require("Quest/Client/Q40073ClientConfig")

local subIDs = Q40073ClientConfig.SubIDs
local npcs = Q40073ClientConfig.Npcs
local datas = Q40073ClientConfig.Datas

function Q4007313_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007313_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(-17.14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007313_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40073")
    actor:CreateQuestNpcById(4007313, npcs.Npc12626Data.id, 5)
    actor:RequestInteraction(npcs.Npc12626Data.alias)
    self:DestroySelf()
end

function Q4007313_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007313_Trigger
