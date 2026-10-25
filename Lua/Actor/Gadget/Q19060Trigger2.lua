require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19060Trigger2 = class("Q19060Trigger2", GadgetActorProxy)
Q19060Trigger2.defaultAlias = "Q19060Trigger2"
local Q19060ClientConfig = require("Quest/Client/Q19060ClientConfig")

local subIDs = Q19060ClientConfig.SubIDs
local npcs = Q19060ClientConfig.Npcs
local datas = Q19060ClientConfig.Datas

function Q19060Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19060Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19060Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19060"):NarratorOnlyTaskByData(datas.Narrator1, nil, 19060)
    self:DestroySelf()
end

function Q19060Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q19060Trigger2
