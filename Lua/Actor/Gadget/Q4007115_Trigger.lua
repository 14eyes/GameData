require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007115_Trigger = class("Q4007115_Trigger", GadgetActorProxy)
Q4007115_Trigger.defaultAlias = "Q4007115_Trigger"
local Q40071ClientConfig = require("Quest/Client/Q40071ClientConfig")

local subIDs = Q40071ClientConfig.SubIDs
local npcs = Q40071ClientConfig.Npcs
local gadgets = Q40071ClientConfig.Gadgets
local datas = Q40071ClientConfig.Datas

function Q4007115_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007115_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007115_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40071")
    actor:CreateQuestNpcById(4007115, npcs.Npc10095Data.id, 3)
    actor:RequestInteraction(npcs.Npc10095Data.alias)
    self:DestroySelf()
end

function Q4007115_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007115_Trigger
