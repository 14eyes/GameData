require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303120Trigger = class("Q303120Trigger", GadgetActorProxy)
Q303120Trigger.defaultAlias = "Q303120Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303120Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303120Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303120Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("3031"):NarratorOnlyTaskByData(datas.NarratorWithId05, nil, 3031)
    end)

    this:DestroySelf()
end

function Q303120Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303120Trigger
