require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325601Trigger = class("Q7325601Trigger", GadgetActorProxy)
Q7325601Trigger.defaultAlias = "Q7325601Trigger"
local Q73256ClientConfig = require("Quest/Client/Q73256ClientConfig")

local this
local subIDs = Q73256ClientConfig.SubIDs
local npcs = Q73256ClientConfig.Npcs
local points = Q73256ClientConfig.Points
local datas = Q73256ClientConfig.Datas

function Q7325601Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325601Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7325601Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73256"):NarratorOnlyTaskByData(datas.NarratorWithId02)
    this:DestroySelf()
end

function Q7325601Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325601Trigger
