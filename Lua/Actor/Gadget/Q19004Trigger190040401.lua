require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19004Trigger190040401 = class("Q19004Trigger190040401", GadgetActorProxy)
Q19004Trigger190040401.defaultAlias = "Q19004Trigger190040401"
local Q19004ClientConfig = require("Quest/Client/Q19004ClientConfig")

local mainID = Q19004ClientConfig.MainID
local actorAlias = Q19004ClientConfig.ActorAlias
local subIDs = Q19004ClientConfig.SubIDs
local npcs = Q19004ClientConfig.Npcs
local datas = Q19004ClientConfig.Datas

function Q19004Trigger190040401:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19004Trigger190040401:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19004Trigger190040401:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId19004004)
    actor:FinishQuestID(false, 1900404)
    self:DestroySelf()
end

function Q19004Trigger190040401:TriggerOut()
    print("TriggerOut")
end

return Q19004Trigger190040401
