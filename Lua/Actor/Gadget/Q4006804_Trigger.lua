require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006804_Trigger = class("Q4006804_Trigger", GadgetActorProxy)
Q4006804_Trigger.defaultAlias = "Q4006804_Trigger"
local Q40068ClientConfig = require("Quest/Client/Q40068ClientConfig")

local subIDs = Q40068ClientConfig.SubIDs
local npcs = Q40068ClientConfig.Npcs
local datas = Q40068ClientConfig.Datas

function Q4006804_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006804_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006804_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40068")
    actor:CreateQuestNpcById(4006804, npcs.Npc1042Data.id, 2)
    actor:RequestInteraction(npcs.Npc1042Data.alias)
    self:DestroySelf()
end

function Q4006804_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006804_Trigger
