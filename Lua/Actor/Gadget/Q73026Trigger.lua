require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73026Trigger = class("Q73026Trigger", GadgetActorProxy)
Q73026Trigger.defaultAlias = "Q73026Trigger"
local Q73026ClientConfig = require("Quest/Client/Q73026ClientConfig")

local subIDs = Q73026ClientConfig.SubIDs
local npcs = Q73026ClientConfig.Npcs
local datas = Q73026ClientConfig.Datas

function Q73026Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73026Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73026Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73026"):NarratorOnlyTask(datas.NarratorTable, nil, "")
    self:DestroySelf()
end

function Q73026Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73026Trigger
