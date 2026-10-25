require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7216211Trigger = class("WQ7216211Trigger", GadgetActorProxy)
WQ7216211Trigger.defaultAlias = "WQ7216211Trigger"
local Q72162ClientConfig = require("Quest/Client/Q72162ClientConfig")

local mainID = Q72162ClientConfig.MainID
local actorAlias = Q72162ClientConfig.ActorAlias
local subIDs = Q72162ClientConfig.SubIDs
local npcs = Q72162ClientConfig.Npcs
local datas = Q72162ClientConfig.Datas

function WQ7216211Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7216211Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7216211Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7216211)
    self:DestroySelf()
end

function WQ7216211Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7216211Trigger
