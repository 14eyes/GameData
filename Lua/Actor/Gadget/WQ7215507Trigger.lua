require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7215507Trigger = class("WQ7215507Trigger", GadgetActorProxy)
WQ7215507Trigger.defaultAlias = "WQ7215507Trigger"
local Q72155ClientConfig = require("Quest/Client/Q72155ClientConfig")

local mainID = Q72155ClientConfig.MainID
local actorAlias = Q72155ClientConfig.ActorAlias
local subIDs = Q72155ClientConfig.SubIDs
local npcs = Q72155ClientConfig.Npcs
local datas = Q72155ClientConfig.Datas

function WQ7215507Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7215507Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7215507Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7215507)
    self:DestroySelf()
end

function WQ7215507Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7215507Trigger
