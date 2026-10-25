require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19057Trigger = class("Q19057Trigger", GadgetActorProxy)
Q19057Trigger.defaultAlias = "Q19057Trigger"
local Q19057ClientConfig = require("Quest/Client/Q19057ClientConfig")

local subIDs = Q19057ClientConfig.SubIDs
local npcs = Q19057ClientConfig.Npcs
local datas = Q19057ClientConfig.Datas

function Q19057Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19057Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19057Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1905701)
    self:DestroySelf()
end

function Q19057Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19057Trigger
