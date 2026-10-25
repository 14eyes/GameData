require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7052201Trigger = class("Q7052201Trigger", GadgetActorProxy)
Q7052201Trigger.defaultAlias = "Q7052201Trigger"
local Q70522ClientConfig = require("Quest/Client/Q70522ClientConfig")

local subIDs = Q70522ClientConfig.SubIDs
local npcs = Q70522ClientConfig.Npcs
local datas = Q70522ClientConfig.Datas

function Q7052201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7052201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7052201Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70522"):NarratorOnlyTaskByData(datas.NarratorWithId)
    actorUtils.FinishQuestID(false, 7052201)
    self:DestroySelf()
end

function Q7052201Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7052201Trigger
