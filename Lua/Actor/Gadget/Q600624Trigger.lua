require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600624Trigger = class("Q600624Trigger", GadgetActorProxy)
Q600624Trigger.defaultAlias = "Q600624Trigger"
local Q6006ClientConfig = require("Quest/Client/Q6006ClientConfig")

local this
local subIDs = Q6006ClientConfig.SubIDs
local datas = Q6006ClientConfig.Datas
local npcs = Q6006ClientConfig.Npcs
local points = Q6006ClientConfig.Points

function Q600624Trigger:OnPostDataPrepare()
    print("Q600624Trigger - OnPostDataPrepare")
    this = self
end

function Q600624Trigger:OnPostComponentPrepare()
    print("Q600624Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6006)
end

function Q600624Trigger:TriggerIn()
    print("Q600624Trigger - TriggerIn")
end

function Q600624Trigger:PreTriggerIn()
    print("Q600624Trigger - PreTriggerIn")
end

function Q600624Trigger:LightUpTriggerIn()
    print("Q600624Trigger - LightUpTriggerIn")
end

function Q600624Trigger:TriggerOut()
    print("Q600624Trigger - TriggerOut")
    actorMgr:GetActor("6006"):SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:DestroySelf()
end

return Q600624Trigger
