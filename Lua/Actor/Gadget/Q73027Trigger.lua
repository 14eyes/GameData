require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73027Trigger = class("Q73027Trigger", GadgetActorProxy)
Q73027Trigger.defaultAlias = "Q73027Trigger"
local Q73027ClientConfig = require("Quest/Client/Q73027ClientConfig")

local subIDs = Q73027ClientConfig.SubIDs
local npcs = Q73027ClientConfig.Npcs
local datas = Q73027ClientConfig.Datas

function Q73027Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73027Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73027Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73027"):NarratorOnlyTask(datas.NarratorTable3, nil, "")
    self:DestroySelf()
end

function Q73027Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73027Trigger
