require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73185Trigger4 = class("Q73185Trigger4", GadgetActorProxy)
Q73185Trigger4.defaultAlias = "Q73185Trigger4"
local Q73185ClientConfig = require("Quest/Client/Q73185ClientConfig")

local subIDs = Q73185ClientConfig.SubIDs
local npcs = Q73185ClientConfig.Npcs
local datas = Q73185ClientConfig.Datas

function Q73185Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73185Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73185Trigger4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73185"):NarratorOnlyTaskByData(datas.NarratorWithId4)
    self:DestroySelf()
end

function Q73185Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q73185Trigger4
