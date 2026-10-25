require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007403_Trigger = class("Q4007403_Trigger", GadgetActorProxy)
Q4007403_Trigger.defaultAlias = "Q4007403_Trigger"
local Q40074ClientConfig = require("Quest/Client/Q40074ClientConfig")

local subIDs = Q40074ClientConfig.SubIDs
local npcs = Q40074ClientConfig.Npcs
local datas = Q40074ClientConfig.Datas

function Q4007403_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007403_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007403_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40074")
    actor:CreateQuestNpcById(4007403, npcs.Npc10095Data.id, 4)
    actor:RequestInteraction(npcs.Npc10095Data.alias)
    self:DestroySelf()
end

function Q4007403_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007403_Trigger
