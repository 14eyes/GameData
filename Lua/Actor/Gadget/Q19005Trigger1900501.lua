require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19005Trigger1900501 = class("Q19005Trigger1900501", GadgetActorProxy)
Q19005Trigger1900501.defaultAlias = "Q19005Trigger1900501"
local Q19005ClientConfig = require("Quest/Client/Q19005ClientConfig")

local mainID = Q19005ClientConfig.MainID
local actorAlias = Q19005ClientConfig.ActorAlias
local subIDs = Q19005ClientConfig.SubIDs
local npcs = Q19005ClientConfig.Npcs
local datas = Q19005ClientConfig.Datas

function Q19005Trigger1900501:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19005Trigger1900501:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19005Trigger1900501:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:EnterSceneLookCamera({x = 2517.136, y = 205.5824, z = -1207.889}, 0, 3, true, true)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId19004003)
    self:DestroySelf()
end

function Q19005Trigger1900501:TriggerOut()
    print("TriggerOut")
end

return Q19005Trigger1900501
