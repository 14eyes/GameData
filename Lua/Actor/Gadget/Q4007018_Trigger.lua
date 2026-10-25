require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007018_Trigger = class("Q4007018_Trigger", GadgetActorProxy)
Q4007018_Trigger.defaultAlias = "Q4007018_Trigger"
local Q40070ClientConfig = require("Quest/Client/Q40070ClientConfig")

local subIDs = Q40070ClientConfig.SubIDs
local npcs = Q40070ClientConfig.Npcs
local datas = Q40070ClientConfig.Datas

function Q4007018_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007018_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007018_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40070")
    actor:CreateQuestNpcById(4007018, npcs.Npc1042Data.id, 1)
    actor:RequestInteraction(npcs.Npc1042Data.alias)
    self:DestroySelf()
end

function Q4007018_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007018_Trigger
