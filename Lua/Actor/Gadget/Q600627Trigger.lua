require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600627Trigger = class("Q600627Trigger", GadgetActorProxy)
Q600627Trigger.defaultAlias = "Q600627Trigger"
local Q6006ClientConfig = require("Quest/Client/Q6006ClientConfig")

local this
local subIDs = Q6006ClientConfig.SubIDs
local datas = Q6006ClientConfig.Datas
local npcs = Q6006ClientConfig.Npcs
local points = Q6006ClientConfig.Points

function Q600627Trigger:OnPostDataPrepare()
    print("Q600627Trigger - OnPostDataPrepare")
    this = self
end

function Q600627Trigger:OnPostComponentPrepare()
    print("Q600627Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6006)
end

function Q600627Trigger:TriggerIn()
    print("Q600627Trigger - TriggerIn")
    actorMgr:GetActor("6006"):TransmitPlayerByQuestId(600627, 4, nil, nil, nil)
    this:DestroySelf()
end

function Q600627Trigger:PreTriggerIn()
    print("Q600627Trigger - PreTriggerIn")
end

function Q600627Trigger:LightUpTriggerIn()
    print("Q600627Trigger - LightUpTriggerIn")
end

function Q600627Trigger:TriggerOut()
    print("Q600627Trigger - TriggerOut")
end

return Q600627Trigger
