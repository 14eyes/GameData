require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006712_NarratorTrigger = class("Q4006712_NarratorTrigger", GadgetActorProxy)
Q4006712_NarratorTrigger.defaultAlias = "Q4006712_NarratorTrigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006712_NarratorTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006712_NarratorTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006712_NarratorTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40067"):NarratorOnlyTaskByData(datas.Narrator_4006711, nil, 40067)
    self:DestroySelf()
end

function Q4006712_NarratorTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006712_NarratorTrigger
