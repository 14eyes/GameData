require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21033Trigger = class("Q21033Trigger", GadgetActorProxy)
Q21033Trigger.defaultAlias = "Q21033Trigger"
local Q21033ClientConfig = require("Quest/Client/Q21033ClientConfig")

local this
local subIDs = Q21033ClientConfig.SubIDs
local npcs = Q21033ClientConfig.Npcs
local datas = Q21033ClientConfig.Datas

function Q21033Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q21033Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q21033Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21033"):NarratorOnlyTaskByData(datas.NarratorWithId)
    this:DestroySelf()
end

function Q21033Trigger:TriggerOut()
    print("TriggerOut")
end

return Q21033Trigger
