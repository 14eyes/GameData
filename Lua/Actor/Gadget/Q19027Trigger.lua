require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19027Trigger = class("Q19027Trigger", GadgetActorProxy)
Q19027Trigger.defaultAlias = "Q19027Trigger"
local Q19027ClientConfig = require("Quest/Client/Q19027ClientConfig")

local subIDs = Q19027ClientConfig.SubIDs
local npcs = Q19027ClientConfig.Npcs
local datas = Q19027ClientConfig.Datas

function Q19027Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19027Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19027Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19027"):FinishQuestID(false, 1902702)
    self:DestroySelf()
end

function Q19027Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19027Trigger
