require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72662Trigger = class("Q72662Trigger", GadgetActorProxy)
Q72662Trigger.defaultAlias = "Q72662Trigger"
local Q72662ClientConfig = require("Quest/Client/Q72662ClientConfig")

local subIDs = Q72662ClientConfig.SubIDs
local npcs = Q72662ClientConfig.Npcs
local datas = Q72662ClientConfig.Datas

function Q72662Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72662Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72662Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72662"):FinishQuestID(false, 7266202)
end

function Q72662Trigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q72662Trigger
