require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008202Trigger = class("Q4008202Trigger", GadgetActorProxy)
Q4008202Trigger.defaultAlias = "Q4008202Trigger"
local Q40082ClientConfig = require("Quest/Client/Q40082ClientConfig")

local subIDs = Q40082ClientConfig.SubIDs
local npcs = Q40082ClientConfig.Npcs
local datas = Q40082ClientConfig.Datas

function Q4008202Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008202Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008202Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40082"):NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 40082)
    self:DestroySelf()
end

function Q4008202Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008202Trigger
