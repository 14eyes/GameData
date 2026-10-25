require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007113_Trigger = class("Q4007113_Trigger", GadgetActorProxy)
Q4007113_Trigger.defaultAlias = "Q4007113_Trigger"
local Q40071ClientConfig = require("Quest/Client/Q40071ClientConfig")

local subIDs = Q40071ClientConfig.SubIDs
local npcs = Q40071ClientConfig.Npcs
local gadgets = Q40071ClientConfig.Gadgets
local datas = Q40071ClientConfig.Datas

function Q4007113_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007113_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007113_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40071")
    actor:CreateQuestNpcById(4007113, npcs.Npc10095Data.id, 3)
    actor:RequestInteraction(npcs.Npc10095Data.alias)
    self:DestroySelf()
end

function Q4007113_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007113_Trigger
