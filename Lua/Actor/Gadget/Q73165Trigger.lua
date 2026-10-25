require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73165Trigger = class("Q73165Trigger", GadgetActorProxy)
Q73165Trigger.defaultAlias = "Q73165Trigger"
local Q73165ClientConfig = require("Quest/Client/Q73165ClientConfig")

local subIDs = Q73165ClientConfig.SubIDs
local npcs = Q73165ClientConfig.Npcs
local datas = Q73165ClientConfig.Datas

function Q73165Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73165Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73165Trigger:TriggerIn()
    print("TriggerIn")
    self:GetQuestNpcActor(npcs.Npc20703Data.alias):DestroyWithDisappear(false)
    local actor = actorMgr:GetActor("73165")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId)
    actor:EnterSceneLookCamera(npcs.Npc20703Data.point.pos, 0.2, 2, false, false)
    self:DestroySelf()
end

function Q73165Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73165Trigger
