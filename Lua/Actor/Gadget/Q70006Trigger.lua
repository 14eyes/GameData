require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70006Trigger = class("Q70006Trigger", GadgetActorProxy)
Q70006Trigger.defaultAlias = "Q70006Trigger"
local Q70006ClientConfig = require("Quest/Client/Q70006ClientConfig")

local mainID = Q70006ClientConfig.MainID
local actorAlias = Q70006ClientConfig.ActorAlias
local subIDs = Q70006ClientConfig.SubIDs
local npcs = Q70006ClientConfig.Npcs
local datas = Q70006ClientConfig.Datas

function Q70006Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70006Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70006Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q70006Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70006Trigger
