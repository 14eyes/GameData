require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73118Trigger = class("Q73118Trigger", GadgetActorProxy)
Q73118Trigger.defaultAlias = "Q73118Trigger"
local Q73118ClientConfig = require("Quest/Client/Q73118ClientConfig")

local subIDs = Q73118ClientConfig.SubIDs
local npcs = Q73118ClientConfig.Npcs
local datas = Q73118ClientConfig.Datas

function Q73118Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73118Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73118Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73118")
    actor:EnterSceneLookCamera(npcs.Npc20685Data.point.pos, 0.2, 2, false, false)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc20685Data.alias)
    questNpcActor:NarratorOnlyTaskByData(datas.NarratorWithId)
    actor:SafeDestroyQuestNpc(npcs.Npc20685Data.alias, 3)
    questNpcActor:DestroyWithDisappear(false)
    self:DestroySelf()
end

function Q73118Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73118Trigger
