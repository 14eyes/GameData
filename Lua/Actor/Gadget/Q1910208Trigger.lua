require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910208Trigger = class("Q1910208Trigger", GadgetActorProxy)
Q1910208Trigger.defaultAlias = "Q1910208Trigger"
local Q19102ClientConfig = require("Quest/Client/Q19102ClientConfig")

local subIDs = Q19102ClientConfig.SubIDs
local npcs = Q19102ClientConfig.Npcs
local datas = Q19102ClientConfig.Datas

function Q1910208Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910208Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910208Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19102"):FinishQuestID(false, 1910208)
    self:DestroySelf()
end

function Q1910208Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910208Trigger
