require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007319_NarratorTrigger = class("Q4007319_NarratorTrigger", GadgetActorProxy)
Q4007319_NarratorTrigger.defaultAlias = "Q4007319_NarratorTrigger"
local Q40073ClientConfig = require("Quest/Client/Q40073ClientConfig")

local subIDs = Q40073ClientConfig.SubIDs
local npcs = Q40073ClientConfig.Npcs
local datas = Q40073ClientConfig.Datas

function Q4007319_NarratorTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007319_NarratorTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(70, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007319_NarratorTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40073"):NarratorOnlyTaskByData(datas.Narrator_4007305, nil, 40073)
    self:DestroySelf()
end

function Q4007319_NarratorTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4007319_NarratorTrigger
