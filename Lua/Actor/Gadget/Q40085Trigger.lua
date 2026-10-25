require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40085Trigger = class("Q40085Trigger", GadgetActorProxy)
Q40085Trigger.defaultAlias = "Q40085Trigger"
local Q40085ClientConfig = require("Quest/Client/Q40085ClientConfig")

local subIDs = Q40085ClientConfig.SubIDs
local npcs = Q40085ClientConfig.Npcs
local datas = Q40085ClientConfig.Datas

function Q40085Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40085Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40085Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40085"):NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 40085)
    self:DestroySelf()
end

function Q40085Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40085Trigger
