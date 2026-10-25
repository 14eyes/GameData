require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007613_Trigger = class("Q4007613_Trigger", GadgetActorProxy)
Q4007613_Trigger.defaultAlias = "Q4007613_Trigger"
local Q40076ClientConfig = require("Quest/Client/Q40076ClientConfig")

local subIDs = Q40076ClientConfig.SubIDs
local npcs = Q40076ClientConfig.Npcs
local datas = Q40076ClientConfig.Datas

function Q4007613_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007613_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007613_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40076")
    actor:CreateQuestNpcById(4007613, npcs.Npc10095Data.id, 1)
    actor:RequestInteraction(npcs.Npc10095Data.alias)
    self:DestroySelf()
end

function Q4007613_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007613_Trigger
