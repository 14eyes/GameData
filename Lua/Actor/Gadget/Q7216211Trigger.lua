require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216211Trigger = class("Q7216211Trigger", GadgetActorProxy)
Q7216211Trigger.defaultAlias = "Q7216211Trigger"
local Q72162ClientConfig = require("Quest/Client/Q72162ClientConfig")

local subIDs = Q72162ClientConfig.SubIDs
local npcs = Q72162ClientConfig.Npcs
local datas = Q72162ClientConfig.Datas

function Q7216211Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216211Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216211Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72162"):FinishQuestID(false, 7216211)
    self:DestroySelf()
end

function Q7216211Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7216211Trigger
