require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7326709Trigger = class("Q7326709Trigger", GadgetActorProxy)
Q7326709Trigger.defaultAlias = "Q7326709Trigger"
local Q73267ClientConfig = require("Quest/Client/Q73267ClientConfig")

local this
local subIDs = Q73267ClientConfig.SubIDs
local npcs = Q73267ClientConfig.Npcs
local datas = Q73267ClientConfig.Datas

function Q7326709Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7326709Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7326709Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73267"):NarratorOnlyTaskByData(datas.Narrator_7326702)
    this:DestroySelf()
end

function Q7326709Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7326709Trigger
