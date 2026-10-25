require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303119Trigger = class("Q303119Trigger", GadgetActorProxy)
Q303119Trigger.defaultAlias = "Q303119Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303119Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303119Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303119Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):NarratorOnlyTaskByData(datas.NarratorWithId04)
    this:DestroySelf()
end

function Q303119Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303119Trigger
