require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19005Trigger1900504 = class("Q19005Trigger1900504", GadgetActorProxy)
Q19005Trigger1900504.defaultAlias = "Q19005Trigger1900504"
local Q19005ClientConfig = require("Quest/Client/Q19005ClientConfig")

local mainID = Q19005ClientConfig.MainID
local actorAlias = Q19005ClientConfig.ActorAlias
local subIDs = Q19005ClientConfig.SubIDs
local npcs = Q19005ClientConfig.Npcs
local datas = Q19005ClientConfig.Datas

function Q19005Trigger1900504:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19005Trigger1900504:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19005Trigger1900504:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1900504)
    self:DestroySelf()
end

function Q19005Trigger1900504:TriggerOut()
    print("TriggerOut")
end

return Q19005Trigger1900504
