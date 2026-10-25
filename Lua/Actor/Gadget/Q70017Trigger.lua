require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70017Trigger = class("Q70017Trigger", GadgetActorProxy)
Q70017Trigger.defaultAlias = "Q70017Trigger"
local Q70017ClientConfig = require("Quest/Client/Q70017ClientConfig")

local mainID = Q70017ClientConfig.MainID
local actorAlias = Q70017ClientConfig.ActorAlias
local subIDs = Q70017ClientConfig.SubIDs
local npcs = Q70017ClientConfig.Npcs
local datas = Q70017ClientConfig.Datas

function Q70017Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70017Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70017Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q70017Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70017Trigger
