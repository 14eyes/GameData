require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73185Trigger3 = class("Q73185Trigger3", GadgetActorProxy)
Q73185Trigger3.defaultAlias = "Q73185Trigger3"
local Q73185ClientConfig = require("Quest/Client/Q73185ClientConfig")

local subIDs = Q73185ClientConfig.SubIDs
local npcs = Q73185ClientConfig.Npcs
local datas = Q73185ClientConfig.Datas

function Q73185Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73185Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73185Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73185"):NarratorOnlyTaskByData(datas.NarratorWithId2)
    self:DestroySelf()
end

function Q73185Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q73185Trigger3
