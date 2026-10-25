require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323206Trigger = class("Q7323206Trigger", GadgetActorProxy)
Q7323206Trigger.defaultAlias = "Q7323206Trigger"
local Q73232ClientConfig = require("Quest/Client/Q73232ClientConfig")

local subIDs = Q73232ClientConfig.SubIDs
local npcs = Q73232ClientConfig.Npcs
local datas = Q73232ClientConfig.Datas

function Q7323206Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7323206Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323206Trigger:TriggerIn()
    print("TriggerIn")
    self:GetQuestNpcActor(npcs.Npc20893Data.alias):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q7323206Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323206Trigger
