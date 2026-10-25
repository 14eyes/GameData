require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905303Trigger = class("Q1905303Trigger", GadgetActorProxy)
Q1905303Trigger.defaultAlias = "Q1905303Trigger"
local Q19053ClientConfig = require("Quest/Client/Q19053ClientConfig")

local subIDs = Q19053ClientConfig.SubIDs
local npcs = Q19053ClientConfig.Npcs
local datas = Q19053ClientConfig.Datas

function Q1905303Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905303Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905303Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19053")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId190530301)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "COOP10240101Seach01").pos, 0, 3, true, false)
    self:DestroySelf()
end

function Q1905303Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1905303Trigger
