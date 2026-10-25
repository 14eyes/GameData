require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300213Trigger = class("Q300213Trigger", GadgetActorProxy)
Q300213Trigger.defaultAlias = "Q300213Trigger"
local Q3002ClientConfig = require("Quest/Client/Q3002ClientConfig")

local subIDs = Q3002ClientConfig.SubIDs
local npcs = Q3002ClientConfig.Npcs
local datas = Q3002ClientConfig.Datas

function Q300213Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300213Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300213Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3002"):NarratorOnlyTaskByData(datas.NarratorWithId300205)
    self:DestroySelf()
end

function Q300213Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300213Trigger
