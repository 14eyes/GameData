require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2304113Trigger = class("Q2304113Trigger", GadgetActorProxy)
Q2304113Trigger.defaultAlias = "Q2304113Trigger"
local Q23041ClientConfig = require("Quest/Client/Q23041ClientConfig")

local subIDs = Q23041ClientConfig.SubIDs
local npcs = Q23041ClientConfig.Npcs
local datas = Q23041ClientConfig.Datas

function Q2304113Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2304113Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2304113Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23041"):NarratorOnlyTaskByData(datas.NarratorWithId13)
    self:DestroySelf()
end

function Q2304113Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2304113Trigger
