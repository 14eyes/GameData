require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008411Trigger = class("Q4008411Trigger", GadgetActorProxy)
Q4008411Trigger.defaultAlias = "Q4008411Trigger"
local Q40084ClientConfig = require("Quest/Client/Q40084ClientConfig")

local subIDs = Q40084ClientConfig.SubIDs
local npcs = Q40084ClientConfig.Npcs
local datas = Q40084ClientConfig.Datas

function Q4008411Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008411Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008411Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40084"):NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 400084)
    print("getin!!!")
    self:DestroySelf()
end

function Q4008411Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008411Trigger
