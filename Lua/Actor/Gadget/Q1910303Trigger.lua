require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910303Trigger = class("Q1910303Trigger", GadgetActorProxy)
Q1910303Trigger.defaultAlias = "Q1910303Trigger"
local Q19103ClientConfig = require("Quest/Client/Q19103ClientConfig")

local subIDs = Q19103ClientConfig.SubIDs
local npcs = Q19103ClientConfig.Npcs
local datas = Q19103ClientConfig.Datas

function Q1910303Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910303Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910303Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19103"):FinishQuestID(false, 1910303)
    self:DestroySelf()
end

function Q1910303Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910303Trigger
