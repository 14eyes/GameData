require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73204Trigger = class("Q73204Trigger", GadgetActorProxy)
Q73204Trigger.defaultAlias = "Q73204Trigger"
local Q73204ClientConfig = require("Quest/Client/Q73204ClientConfig")

local subIDs = Q73204ClientConfig.SubIDs
local npcs = Q73204ClientConfig.Npcs
local datas = Q73204ClientConfig.Datas

function Q73204Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73204Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 1826.0, y = 213.0, z = 4629.0}, self.TriggerIn, self.TriggerOut)
end

function Q73204Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73204"):NarratorOnlyTaskByData(datas.Narrator_732040801)
    self:DestroySelf()
end

function Q73204Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73204Trigger
