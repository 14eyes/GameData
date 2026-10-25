require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006410_Trigger = class("Q4006410_Trigger", GadgetActorProxy)
Q4006410_Trigger.defaultAlias = "Q4006410_Trigger"
local Q40064ClientConfig = require("Quest/Client/Q40064ClientConfig")

local subIDs = Q40064ClientConfig.SubIDs
local npcs = Q40064ClientConfig.Npcs
local gadgets = Q40064ClientConfig.Gadgets
local datas = Q40064ClientConfig.Datas

function Q4006410_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006410_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006410_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40064")
    actor:CreateQuestNpcById(4006410, npcs.Npc1032Data.id, 1)
    actor:RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4006410_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006410_Trigger
