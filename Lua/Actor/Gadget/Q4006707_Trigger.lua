require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006707_Trigger = class("Q4006707_Trigger", GadgetActorProxy)
Q4006707_Trigger.defaultAlias = "Q4006707_Trigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006707_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006707_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(80.77515, 74.23324, 34.01701, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006707_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40067"):NarratorOnlyTaskByData(datas.Narrator_4006704, nil, 40067)
    self:DestroySelf()
end

function Q4006707_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006707_Trigger
