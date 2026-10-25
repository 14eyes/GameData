require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7215801Trigger = class("WQ7215801Trigger", GadgetActorProxy)
WQ7215801Trigger.defaultAlias = "WQ7215801Trigger"
local Q72158ClientConfig = require("Quest/Client/Q72158ClientConfig")

local mainID = Q72158ClientConfig.MainID
local actorAlias = Q72158ClientConfig.ActorAlias
local subIDs = Q72158ClientConfig.SubIDs
local datas = Q72158ClientConfig.Datas

function WQ7215801Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7215801Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7215801Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7215801)
    self:DestroySelf()
end

function WQ7215801Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7215801Trigger
