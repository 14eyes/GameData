require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007316_NarratorTrigger3 = class("Q4007316_NarratorTrigger3", GadgetActorProxy)
Q4007316_NarratorTrigger3.defaultAlias = "Q4007316_NarratorTrigger3"
local Q40073ClientConfig = require("Quest/Client/Q40073ClientConfig")

local subIDs = Q40073ClientConfig.SubIDs
local npcs = Q40073ClientConfig.Npcs
local datas = Q40073ClientConfig.Datas

function Q4007316_NarratorTrigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007316_NarratorTrigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007316_NarratorTrigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40073"):NarratorOnlyTaskByData(datas.Narrator_4007310, nil, 40073)
    self:DestroySelf()
end

function Q4007316_NarratorTrigger3:TriggerOut()
    print("TriggerOut")
end

return Q4007316_NarratorTrigger3
