require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72661Trigger = class("Q72661Trigger", GadgetActorProxy)
Q72661Trigger.defaultAlias = "Q72661Trigger"
local Q72661ClientConfig = require("Quest/Client/Q72661ClientConfig")

local subIDs = Q72661ClientConfig.SubIDs
local npcs = Q72661ClientConfig.Npcs
local datas = Q72661ClientConfig.Datas

function Q72661Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72661Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72661Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72661"):FinishQuestID(false, 7266102)
end

function Q72661Trigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q72661Trigger
