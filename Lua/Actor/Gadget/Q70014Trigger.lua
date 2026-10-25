require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70014Trigger = class("Q70014Trigger", GadgetActorProxy)
Q70014Trigger.defaultAlias = "Q70014Trigger"
local Q70014ClientConfig = require("Quest/Client/Q70014ClientConfig")

local mainID = Q70014ClientConfig.MainID
local actorAlias = Q70014ClientConfig.ActorAlias
local subIDs = Q70014ClientConfig.SubIDs
local npcs = Q70014ClientConfig.Npcs
local datas = Q70014ClientConfig.Datas

function Q70014Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70014Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70014Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q70014Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70014Trigger
