require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006706_NarratorTrigger = class("Q4006706_NarratorTrigger", GadgetActorProxy)
Q4006706_NarratorTrigger.defaultAlias = "Q4006706_NarratorTrigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006706_NarratorTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006706_NarratorTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(53.62684, 41.98093, 65.24676, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006706_NarratorTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40067"):NarratorOnlyTaskByData(datas.Narrator_4006703, nil, 40067)
    self:DestroySelf()
end

function Q4006706_NarratorTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006706_NarratorTrigger
