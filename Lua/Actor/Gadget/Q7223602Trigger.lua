require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223602Trigger = class("Q7223602Trigger", GadgetActorProxy)
Q7223602Trigger.defaultAlias = "Q7223602Trigger"
local Q72236ClientConfig = require("Quest/Client/Q72236ClientConfig")

local subIDs = Q72236ClientConfig.SubIDs
local datas = Q72236ClientConfig.Datas

function Q7223602Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223602Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223602Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72236"):NarratorOnlyTask(datas.NarratorTable01, nil, "Story")
    self:DestroySelf()
end

function Q7223602Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7223602Trigger
