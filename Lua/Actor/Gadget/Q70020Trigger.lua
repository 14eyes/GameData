require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70020Trigger = class("Q70020Trigger", GadgetActorProxy)
Q70020Trigger.defaultAlias = "Q70020Trigger"
local Q70020ClientConfig = require("Quest/Client/Q70020ClientConfig")

local mainID = Q70020ClientConfig.MainID
local actorAlias = Q70020ClientConfig.ActorAlias
local subIDs = Q70020ClientConfig.SubIDs
local npcs = Q70020ClientConfig.Npcs
local datas = Q70020ClientConfig.Datas

function Q70020Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70020Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70020Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q70020Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70020Trigger
