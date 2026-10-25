require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007707_Trigger = class("Q4007707_Trigger", GadgetActorProxy)
Q4007707_Trigger.defaultAlias = "Q4007707_Trigger"
local Q40077ClientConfig = require("Quest/Client/Q40077ClientConfig")

local subIDs = Q40077ClientConfig.SubIDs
local npcs = Q40077ClientConfig.Npcs
local datas = Q40077ClientConfig.Datas

function Q4007707_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007707_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007707_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40077")
    actor:CreateQuestNpcById(4007707, npcs.Npc1032Data.id, 1)
    actor:RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4007707_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007707_Trigger
