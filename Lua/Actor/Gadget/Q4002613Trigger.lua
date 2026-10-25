require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4002613Trigger = class("Q4002613Trigger", GadgetActorProxy)
Q4002613Trigger.defaultAlias = "Q4002613Trigger"
local Q40026ClientConfig = require("Quest/Client/Q40026ClientConfig")

local subIDs = Q40026ClientConfig.SubIDs
local npcs = Q40026ClientConfig.Npcs
local gadgets = Q40026ClientConfig.Gadgets
local datas = Q40026ClientConfig.Datas

function Q4002613Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4002613Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4002613Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40026")
    actor:CreateQuestNpcById(4002613, npcs.Npc1018Data.id, 1)
    actor:RequestInteraction(npcs.Npc1018Data.alias)
    self:DestroySelf()
end

function Q4002613Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4002613Trigger
