require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19064Trigger = class("Q19064Trigger", GadgetActorProxy)
Q19064Trigger.defaultAlias = "Q19064Trigger"
local Q19064ClientConfig = require("Quest/Client/Q19064ClientConfig")

local mainID = Q19064ClientConfig.MainID
local actorAlias = Q19064ClientConfig.ActorAlias
local subIDs = Q19064ClientConfig.SubIDs
local npcs = Q19064ClientConfig.Npcs
local datas = Q19064ClientConfig.Datas

function Q19064Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19064Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19064Trigger:TriggerIn()
    print("TriggerIn")
end

function Q19064Trigger:TriggerOut()
    actorMgr:GetActor(Q19064ClientConfig.ActorAlias):FinishQuestID(true, 1906403)
    print("let woodcrush challenge fail")
    self:DestroySelf()
end

return Q19064Trigger
