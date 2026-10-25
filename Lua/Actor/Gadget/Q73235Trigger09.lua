require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73235Trigger09 = class("Q73235Trigger09", GadgetActorProxy)
Q73235Trigger09.defaultAlias = "Q73235Trigger09"
local Q73235ClientConfig = require("Quest/Client/Q73235ClientConfig")

local subIDs = Q73235ClientConfig.SubIDs
local npcs = Q73235ClientConfig.Npcs
local datas = Q73235ClientConfig.Datas

function Q73235Trigger09:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73235Trigger09:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, function(arg1) end)
end

function Q73235Trigger09:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73235"):NarratorOnlyTaskByData(datas.NarratorWithId09)
    self:DestroySelf()
end

function Q73235Trigger09:TriggerOut()
    print("TriggerOut")
end

return Q73235Trigger09
