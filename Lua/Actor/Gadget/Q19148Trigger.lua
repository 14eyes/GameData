require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19148Trigger = class("Q19148Trigger", GadgetActorProxy)
Q19148Trigger.defaultAlias = "Q19148Trigger"
local Q19148ClientConfig = require("Quest/Client/Q19148ClientConfig")

local subIDs = Q19148ClientConfig.SubIDs
local npcs = Q19148ClientConfig.Npcs
local datas = Q19148ClientConfig.Datas

function Q19148Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19148Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19148Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19148"):NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 19148)
    self:DestroySelf()
end

function Q19148Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19148Trigger
