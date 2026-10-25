require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008403Trigger = class("Q4008403Trigger", GadgetActorProxy)
Q4008403Trigger.defaultAlias = "Q4008403Trigger"
local Q40084ClientConfig = require("Quest/Client/Q40084ClientConfig")

local subIDs = Q40084ClientConfig.SubIDs
local npcs = Q40084ClientConfig.Npcs
local datas = Q40084ClientConfig.Datas

function Q4008403Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008403Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008403Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40084"):NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 40084)
    self:DestroySelf()
end

function Q4008403Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008403Trigger
