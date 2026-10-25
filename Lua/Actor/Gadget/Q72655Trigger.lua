require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72655Trigger = class("Q72655Trigger", GadgetActorProxy)
Q72655Trigger.defaultAlias = "Q72655Trigger"
local Q72655ClientConfig = require("Quest/Client/Q72655ClientConfig")

local mainID = Q72655ClientConfig.MainID
local actorAlias = Q72655ClientConfig.ActorAlias
local subIDs = Q72655ClientConfig.SubIDs
local npcs = Q72655ClientConfig.Npcs
local gadgets = Q72655ClientConfig.Gadgets
local datas = Q72655ClientConfig.Datas

function Q72655Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72655Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72655Trigger:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7265502)
    self:DestroySelf()
end

function Q72655Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72655Trigger
