require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7215504Trigger = class("WQ7215504Trigger", GadgetActorProxy)
WQ7215504Trigger.defaultAlias = "WQ7215504Trigger"
local Q72155ClientConfig = require("Quest/Client/Q72155ClientConfig")

local mainID = Q72155ClientConfig.MainID
local actorAlias = Q72155ClientConfig.ActorAlias
local subIDs = Q72155ClientConfig.SubIDs
local npcs = Q72155ClientConfig.Npcs
local datas = Q72155ClientConfig.Datas

function WQ7215504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7215504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7215504Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7215504)
    self:DestroySelf()
end

function WQ7215504Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7215504Trigger
