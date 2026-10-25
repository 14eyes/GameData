require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73697Trigger = class("Q73697Trigger", GadgetActorProxy)
Q73697Trigger.defaultAlias = "Q73697Trigger"
local Q73697ClientConfig = require("Quest/Client/Q73697ClientConfig")

local this
local subIDs = Q73697ClientConfig.SubIDs
local npcs = Q73697ClientConfig.Npcs
local points = Q73697ClientConfig.Points
local datas = Q73697ClientConfig.Datas

function Q73697Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73697Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73697Trigger:TriggerIn()
    print("TriggerIn")
end

function Q73697Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73697Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73697Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("73697"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73697)
    this:DestroySelf()
end

return Q73697Trigger
