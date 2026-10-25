require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73028Trigger1 = class("Q73028Trigger1", GadgetActorProxy)
Q73028Trigger1.defaultAlias = "Q73028Trigger1"
local Q73028ClientConfig = require("Quest/Client/Q73028ClientConfig")

local subIDs = Q73028ClientConfig.SubIDs
local npcs = Q73028ClientConfig.Npcs
local datas = Q73028ClientConfig.Datas

function Q73028Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73028Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73028Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73028"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73028)
    self:DestroySelf()
end

function Q73028Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q73028Trigger1
