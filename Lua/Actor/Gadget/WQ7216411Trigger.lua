require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7216411Trigger = class("WQ7216411Trigger", GadgetActorProxy)
WQ7216411Trigger.defaultAlias = "WQ7216411Trigger"
local Q72164ClientConfig = require("Quest/Client/Q72164ClientConfig")

local mainID = Q72164ClientConfig.MainID
local actorAlias = Q72164ClientConfig.ActorAlias
local subIDs = Q72164ClientConfig.SubIDs
local npcs = Q72164ClientConfig.Npcs
local datas = Q72164ClientConfig.Datas

function WQ7216411Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7216411Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7216411Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7216411)
    self:DestroySelf()
end

function WQ7216411Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7216411Trigger
