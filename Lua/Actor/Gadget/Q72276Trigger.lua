require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72276Trigger = class("Q72276Trigger", GadgetActorProxy)
Q72276Trigger.defaultAlias = "Q72276Trigger"
local Q72276ClientConfig = require("Quest/Client/Q72276ClientConfig")

local subIDs = Q72276ClientConfig.SubIDs
local npcs = Q72276ClientConfig.Npcs
local datas = Q72276ClientConfig.Datas

function Q72276Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72276Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72276Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72276"):FinishQuestID(false, 7227602)
    self:DestroySelf()
end

function Q72276Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72276Trigger
