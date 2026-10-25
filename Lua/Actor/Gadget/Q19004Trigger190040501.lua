require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19004Trigger190040501 = class("Q19004Trigger190040501", GadgetActorProxy)
Q19004Trigger190040501.defaultAlias = "Q19004Trigger190040501"
local Q19004ClientConfig = require("Quest/Client/Q19004ClientConfig")

local mainID = Q19004ClientConfig.MainID
local actorAlias = Q19004ClientConfig.ActorAlias
local subIDs = Q19004ClientConfig.SubIDs
local npcs = Q19004ClientConfig.Npcs
local datas = Q19004ClientConfig.Datas

function Q19004Trigger190040501:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19004Trigger190040501:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19004Trigger190040501:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:EnterSceneLookCamera({x = 2481.192, y = 200.99, z = -1185.678}, 0, 3, true, true)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId19004005)
    self:DestroySelf()
end

function Q19004Trigger190040501:TriggerOut()
    print("TriggerOut")
end

return Q19004Trigger190040501
