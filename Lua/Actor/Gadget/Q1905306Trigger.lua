require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905306Trigger = class("Q1905306Trigger", GadgetActorProxy)
Q1905306Trigger.defaultAlias = "Q1905306Trigger"
local Q19053ClientConfig = require("Quest/Client/Q19053ClientConfig")

local subIDs = Q19053ClientConfig.SubIDs
local npcs = Q19053ClientConfig.Npcs
local datas = Q19053ClientConfig.Datas

function Q1905306Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905306Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905306Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19053"):FinishQuestID(false, 1905306)
    self:DestroySelf()
end

function Q1905306Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1905306Trigger
