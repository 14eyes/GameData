require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007306_Trigger = class("Q4007306_Trigger", GadgetActorProxy)
Q4007306_Trigger.defaultAlias = "Q4007306_Trigger"
local Q40073ClientConfig = require("Quest/Client/Q40073ClientConfig")

local subIDs = Q40073ClientConfig.SubIDs
local npcs = Q40073ClientConfig.Npcs
local datas = Q40073ClientConfig.Datas

function Q4007306_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007306_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007306_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40073")
    actor:CreateQuestNpcById(4007306, npcs.Npc10011Data.id, 1)
    actor:RequestInteraction(npcs.Npc10011Data.alias)
    self:DestroySelf()
end

function Q4007306_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007306_Trigger
