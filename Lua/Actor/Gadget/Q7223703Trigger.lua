require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223703Trigger = class("Q7223703Trigger", GadgetActorProxy)
Q7223703Trigger.defaultAlias = "Q7223703Trigger"
local Q72237ClientConfig = require("Quest/Client/Q72237ClientConfig")

local subIDs = Q72237ClientConfig.SubIDs
local npcs = Q72237ClientConfig.Npcs
local datas = Q72237ClientConfig.Datas

function Q7223703Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223703Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223703Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7223703Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("72237"):NarratorOnlyTask(datas.NarratorTable01, nil, "Story")
    self:DestroySelf()
end

return Q7223703Trigger
