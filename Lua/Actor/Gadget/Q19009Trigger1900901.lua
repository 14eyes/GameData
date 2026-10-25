require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19009Trigger1900901 = class("Q19009Trigger1900901", GadgetActorProxy)
Q19009Trigger1900901.defaultAlias = "Q19009Trigger1900901"
local Q19009ClientConfig = require("Quest/Client/Q19009ClientConfig")

local mainID = Q19009ClientConfig.MainID
local actorAlias = Q19009ClientConfig.ActorAlias
local subIDs = Q19009ClientConfig.SubIDs
local npcs = Q19009ClientConfig.Npcs
local datas = Q19009ClientConfig.Datas

function Q19009Trigger1900901:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19009Trigger1900901:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19009Trigger1900901:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:EnterSceneLookCamera({x = 2242.103, y = 213.99, z = -901.3004}, 0, 3, true, true)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId19009001)
    self:DestroySelf()
end

function Q19009Trigger1900901:TriggerOut()
    print("TriggerOut")
end

return Q19009Trigger1900901
