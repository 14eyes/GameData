require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7216201Trigger = class("WQ7216201Trigger", GadgetActorProxy)
WQ7216201Trigger.defaultAlias = "WQ7216201Trigger"
local Q72162ClientConfig = require("Quest/Client/Q72162ClientConfig")

local mainID = Q72162ClientConfig.MainID
local actorAlias = Q72162ClientConfig.ActorAlias
local subIDs = Q72162ClientConfig.SubIDs
local npcs = Q72162ClientConfig.Npcs
local datas = Q72162ClientConfig.Datas

function WQ7216201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7216201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7216201Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7216201)
    self:DestroySelf()
end

function WQ7216201Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7216201Trigger
