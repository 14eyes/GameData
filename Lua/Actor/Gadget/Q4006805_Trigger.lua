require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006805_Trigger = class("Q4006805_Trigger", GadgetActorProxy)
Q4006805_Trigger.defaultAlias = "Q4006805_Trigger"
local Q40068ClientConfig = require("Quest/Client/Q40068ClientConfig")

local subIDs = Q40068ClientConfig.SubIDs
local npcs = Q40068ClientConfig.Npcs
local datas = Q40068ClientConfig.Datas

function Q4006805_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006805_Trigger:OnPostComponentPrepare()
    print("Q4006805_Trigger OnPostComponentPrepare")
    self:AddComponentTrigger(23, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006805_Trigger:TriggerIn()
    print("Q4006805_Trigger TriggerIn")
    local actor = actorMgr:GetActor("40068")
    actor:CreateQuestNpcById(4006805, npcs.Npc1042Data.id, 2)
    actor:RequestInteraction(npcs.Npc1042Data.alias)
    self:DestroySelf()
end

function Q4006805_Trigger:TriggerOut()
    print("Q4006805_Trigger TriggerOut")
end

function Q4006805_Trigger:OnDestroy()
    print("Q4006805_Trigger OnDestroy")
end

return Q4006805_Trigger
