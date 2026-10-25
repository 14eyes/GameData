require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7216311Trigger = class("WQ7216311Trigger", GadgetActorProxy)
WQ7216311Trigger.defaultAlias = "WQ7216311Trigger"
local Q72163ClientConfig = require("Quest/Client/Q72163ClientConfig")

local mainID = Q72163ClientConfig.MainID
local actorAlias = Q72163ClientConfig.ActorAlias
local subIDs = Q72163ClientConfig.SubIDs
local npcs = Q72163ClientConfig.Npcs
local datas = Q72163ClientConfig.Datas

function WQ7216311Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7216311Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7216311Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7216311)
    self:DestroySelf()
end

function WQ7216311Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7216311Trigger
