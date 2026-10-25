require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006906_Trigger = class("Q4006906_Trigger", GadgetActorProxy)
Q4006906_Trigger.defaultAlias = "Q4006906_Trigger"
local Q40069ClientConfig = require("Quest/Client/Q40069ClientConfig")

local subIDs = Q40069ClientConfig.SubIDs
local npcs = Q40069ClientConfig.Npcs
local datas = Q40069ClientConfig.Datas

function Q4006906_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006906_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006906_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40069")
    actor:CreateQuestNpcById(4006906, npcs.Npc1042Data.id, 1)
    actor:RequestInteraction(npcs.Npc1042Data.alias)
    self:DestroySelf()
end

function Q4006906_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006906_Trigger
