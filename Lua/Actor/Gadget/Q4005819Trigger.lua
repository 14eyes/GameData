require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005819Trigger = class("Q4005819Trigger", GadgetActorProxy)
Q4005819Trigger.defaultAlias = "Q4005819Trigger"
local Q40058ClientConfig = require("Quest/Client/Q40058ClientConfig")

local subIDs = Q40058ClientConfig.SubIDs
local npcs = Q40058ClientConfig.Npcs
local datas = Q40058ClientConfig.Datas

function Q4005819Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005819Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005819Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40058")
    actor:CreateQuestNpcById(4005819, npcs.Npc1032Data.id, 1)
    actor:RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4005819Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005819Trigger
