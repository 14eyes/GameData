require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300206TriggerNear = class("Q1300206TriggerNear", GadgetActorProxy)
Q1300206TriggerNear.defaultAlias = "Q1300206TriggerNear"
local Q13002ClientConfig = require("Quest/Client/Q13002ClientConfig")

local subIDs = Q13002ClientConfig.SubIDs
local npcs = Q13002ClientConfig.Npcs
local datas = Q13002ClientConfig.Datas

function Q1300206TriggerNear:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300206TriggerNear:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300206TriggerNear:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13002"):NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 13002)
    self:DestroySelf()
end

function Q1300206TriggerNear:TriggerOut()
    print("TriggerOut")
end

return Q1300206TriggerNear
