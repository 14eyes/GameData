require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005113Trigger = class("Q4005113Trigger", GadgetActorProxy)
Q4005113Trigger.defaultAlias = "Q4005113Trigger"
local Q40051ClientConfig = require("Quest/Client/Q40051ClientConfig")

local subIDs = Q40051ClientConfig.SubIDs
local npcs = Q40051ClientConfig.Npcs
local datas = Q40051ClientConfig.Datas

function Q4005113Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005113Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(130.2, DistType.EULER, {x = 0, y = 120.2, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005113Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40051"):NarratorOnlyTaskByData(datas.NarratorWithId4005108, nil, 40051)
    self:DestroySelf()
end

function Q4005113Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005113Trigger
