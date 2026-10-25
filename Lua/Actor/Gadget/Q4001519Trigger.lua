require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4001519Trigger = class("Q4001519Trigger", GadgetActorProxy)
Q4001519Trigger.defaultAlias = "Q4001519Trigger"
local Q40015ClientConfig = require("Quest/Client/Q40015ClientConfig")

local mainID = Q40015ClientConfig.MainID
local actorAlias = Q40015ClientConfig.ActorAlias
local subIDs = Q40015ClientConfig.SubIDs
local npcs = Q40015ClientConfig.Npcs
local gadgets = Q40015ClientConfig.Gadgets
local datas = Q40015ClientConfig.Datas

function Q4001519Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4001519Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4001519Trigger:TriggerIn()
    print("TriggerIn")
end

function Q4001519Trigger:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor(actorAlias)
    actor:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    actor:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    actor:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    actor:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:DestroySelf()
end

return Q4001519Trigger
