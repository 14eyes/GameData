require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q120150801Trigger = class("Q120150801Trigger", GadgetActorProxy)
Q120150801Trigger.defaultAlias = "Q120150801Trigger"
local Q12015ClientConfig = require("Quest/Client/Q12015ClientConfig")

local subIDs = Q12015ClientConfig.SubIDs
local npcs = Q12015ClientConfig.Npcs
local datas = Q12015ClientConfig.Datas

function Q120150801Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q120150801Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q120150801Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("12015")
    actor:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_TASK)
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1036Data.alias, 12015)
    questNpcActor:ClearFollowTask()
    questNpcActor:Standby()
    actor:RequestInteraction(npcs.Npc1036Data.alias)
    self:DestroySelf()
end

function Q120150801Trigger:TriggerOut()
    print("TriggerOut")
end

return Q120150801Trigger
