require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006710_NarratorTrigger1 = class("Q4006710_NarratorTrigger1", GadgetActorProxy)
Q4006710_NarratorTrigger1.defaultAlias = "Q4006710_NarratorTrigger1"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006710_NarratorTrigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006710_NarratorTrigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006710_NarratorTrigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40067"):NarratorOnlyTaskByData(datas.Narrator_4006708, nil, 40067)
    self:DestroySelf()
end

function Q4006710_NarratorTrigger1:TriggerOut()
    print("TriggerOut")
end

return Q4006710_NarratorTrigger1
