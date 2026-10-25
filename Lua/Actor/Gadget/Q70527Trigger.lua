require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70527Trigger = class("Q70527Trigger", GadgetActorProxy)
Q70527Trigger.defaultAlias = "Q70527Trigger"
local Q70527ClientConfig = require("Quest/Client/Q70527ClientConfig")

local this
local subIDs = Q70527ClientConfig.SubIDs
local npcs = Q70527ClientConfig.Npcs
local datas = Q70527ClientConfig.Datas

function Q70527Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70527Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q70527Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70527"):NarratorOnlyTaskByData(datas.Narrator_7052701, nil, 70527)
    actorUtils.FinishQuestID(false, 7052701)
    this:DestroySelf()
end

function Q70527Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70527Trigger
