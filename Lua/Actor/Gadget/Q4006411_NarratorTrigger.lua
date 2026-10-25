require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006411_NarratorTrigger = class("Q4006411_NarratorTrigger", GadgetActorProxy)
Q4006411_NarratorTrigger.defaultAlias = "Q4006411_NarratorTrigger"
local Q40064ClientConfig = require("Quest/Client/Q40064ClientConfig")

local subIDs = Q40064ClientConfig.SubIDs
local npcs = Q40064ClientConfig.Npcs
local gadgets = Q40064ClientConfig.Gadgets
local datas = Q40064ClientConfig.Datas

function Q4006411_NarratorTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006411_NarratorTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006411_NarratorTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40064"):NarratorOnlyTaskByData(datas.Narrator_4006402, nil, 40064)
    self:DestroySelf()
end

function Q4006411_NarratorTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006411_NarratorTrigger
