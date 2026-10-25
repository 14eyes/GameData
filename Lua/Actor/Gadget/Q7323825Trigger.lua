require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323825Trigger = class("Q7323825Trigger", GadgetActorProxy)
Q7323825Trigger.defaultAlias = "Q7323825Trigger"
local Q73238ClientConfig = require("Quest/Client/Q73238ClientConfig")

local this
local subIDs = Q73238ClientConfig.SubIDs
local npcs = Q73238ClientConfig.Npcs
local points = Q73238ClientConfig.Points
local datas = Q73238ClientConfig.Datas

function Q7323825Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323825Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7323825Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73238"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("73238"):NarratorOnlyTaskByData(datas.Narrator_732389931)
        this:DestroySelf()
    end)
end

function Q7323825Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7323825Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7323825Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323825Trigger
