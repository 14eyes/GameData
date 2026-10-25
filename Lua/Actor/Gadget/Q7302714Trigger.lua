require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7302714Trigger = class("Q7302714Trigger", GadgetActorProxy)
Q7302714Trigger.defaultAlias = "Q7302714Trigger"
local Q73027ClientConfig = require("Quest/Client/Q73027ClientConfig")

local subIDs = Q73027ClientConfig.SubIDs
local npcs = Q73027ClientConfig.Npcs
local datas = Q73027ClientConfig.Datas

function Q7302714Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7302714Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7302714Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73027"):NarratorOnlyTaskByData(datas.NarratorWithId2, nil, 73027)
    self:DestroySelf()
end

function Q7302714Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7302714Trigger
