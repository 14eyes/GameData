require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300203Trigger = class("Q1300203Trigger", GadgetActorProxy)
Q1300203Trigger.defaultAlias = "Q1300203Trigger"
local Q13002ClientConfig = require("Quest/Client/Q13002ClientConfig")

local subIDs = Q13002ClientConfig.SubIDs
local npcs = Q13002ClientConfig.Npcs
local datas = Q13002ClientConfig.Datas

function Q1300203Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300203Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300203Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13002"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 13002)
    self:DestroySelf()
end

function Q1300203Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300203Trigger
