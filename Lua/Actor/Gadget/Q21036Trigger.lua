require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21036Trigger = class("Q21036Trigger", GadgetActorProxy)
Q21036Trigger.defaultAlias = "Q21036Trigger"
local Q21036ClientConfig = require("Quest/Client/Q21036ClientConfig")

local this
local subIDs = Q21036ClientConfig.SubIDs
local npcs = Q21036ClientConfig.Npcs
local datas = Q21036ClientConfig.Datas

function Q21036Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q21036Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q21036Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21036"):NarratorOnlyTaskByData(datas.NarratorWithIdZD)
    this:DestroySelf()
end

function Q21036Trigger:TriggerOut()
    print("TriggerOut")
end

return Q21036Trigger
