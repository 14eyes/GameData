require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216705Trigger = class("Q7216705Trigger", GadgetActorProxy)
Q7216705Trigger.defaultAlias = "Q7216705Trigger"
local Q72167ClientConfig = require("Quest/Client/Q72167ClientConfig")

local subIDs = Q72167ClientConfig.SubIDs
local npcs = Q72167ClientConfig.Npcs
local datas = Q72167ClientConfig.Datas

function Q7216705Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216705Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216705Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72167"):NarratorOnlyTask(datas.paimengwu, nil, "")
    self:DestroySelf()
end

function Q7216705Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7216705Trigger
