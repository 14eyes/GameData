require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19084Trigger4 = class("Q19084Trigger4", GadgetActorProxy)
Q19084Trigger4.defaultAlias = "Q19084Trigger4"
local Q19084ClientConfig = require("Quest/Client/Q19084ClientConfig")

local mainID = Q19084ClientConfig.MainID
local actorAlias = Q19084ClientConfig.ActorAlias
local subIDs = Q19084ClientConfig.SubIDs
local npcs = Q19084ClientConfig.Npcs
local datas = Q19084ClientConfig.Datas

function Q19084Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19084Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19084Trigger4:TriggerIn()
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.Narrator3, nil, 19084)
    self:DestroySelf()
end

function Q19084Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q19084Trigger4
