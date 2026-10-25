require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19019Trigger = class("Q19019Trigger", GadgetActorProxy)
Q19019Trigger.defaultAlias = "Q19019Trigger"
local Q19019ClientConfig = require("Quest/Client/Q19019ClientConfig")

local subIDs = Q19019ClientConfig.SubIDs
local npcs = Q19019ClientConfig.Npcs
local datas = Q19019ClientConfig.Datas

function Q19019Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19019Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19019Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19019"):FinishQuestID(false, 1901901)
    self:DestroySelf()
end

function Q19019Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19019Trigger
