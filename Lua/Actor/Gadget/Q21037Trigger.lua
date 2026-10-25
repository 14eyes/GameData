require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21037Trigger = class("Q21037Trigger", GadgetActorProxy)
Q21037Trigger.defaultAlias = "Q21037Trigger"
local Q21037ClientConfig = require("Quest/Client/Q21037ClientConfig")

local this
local subIDs = Q21037ClientConfig.SubIDs
local npcs = Q21037ClientConfig.Npcs
local datas = Q21037ClientConfig.Datas

function Q21037Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q21037Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q21037Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21037"):NarratorOnlyTaskByData(datas.NarratorWithId)
    this:DestroySelf()
end

function Q21037Trigger:TriggerOut()
    print("TriggerOut")
end

return Q21037Trigger
