require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70013Trigger = class("Q70013Trigger", GadgetActorProxy)
Q70013Trigger.defaultAlias = "Q70013Trigger"
local Q70013ClientConfig = require("Quest/Client/Q70013ClientConfig")

local mainID = Q70013ClientConfig.MainID
local actorAlias = Q70013ClientConfig.ActorAlias
local subIDs = Q70013ClientConfig.SubIDs
local npcs = Q70013ClientConfig.Npcs
local datas = Q70013ClientConfig.Datas

function Q70013Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70013Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70013Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q70013Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70013Trigger
