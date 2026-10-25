require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72663Trigger = class("Q72663Trigger", GadgetActorProxy)
Q72663Trigger.defaultAlias = "Q72663Trigger"
local Q72663ClientConfig = require("Quest/Client/Q72663ClientConfig")

local subIDs = Q72663ClientConfig.SubIDs
local npcs = Q72663ClientConfig.Npcs
local datas = Q72663ClientConfig.Datas

function Q72663Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72663Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72663Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72663"):FinishQuestID(false, 7266302)
end

function Q72663Trigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q72663Trigger
