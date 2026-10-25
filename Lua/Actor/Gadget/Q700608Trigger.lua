require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700608Trigger = class("Q700608Trigger", GadgetActorProxy)
Q700608Trigger.defaultAlias = "Q700608Trigger"
local Q7006ClientConfig = require("Quest/Client/Q7006ClientConfig")

local this
local subIDs = Q7006ClientConfig.SubIDs
local datas = Q7006ClientConfig.Datas
local npcs = Q7006ClientConfig.Npcs
local points = Q7006ClientConfig.Points

function Q700608Trigger:OnPostDataPrepare()
    print("Q700608Trigger - OnPostDataPrepare")
    this = self
end

function Q700608Trigger:OnPostComponentPrepare()
    print("Q700608Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7006)
end

function Q700608Trigger:TriggerIn()
    print("Q700608Trigger - TriggerIn")
    actorMgr:GetActor("7006"):GetQuestNpcActor(npcs.Npc1332.alias, 7006):TurnToAvatar()
end

function Q700608Trigger:PreTriggerIn()
    print("Q700608Trigger - PreTriggerIn")
end

function Q700608Trigger:LightUpTriggerIn()
    print("Q700608Trigger - LightUpTriggerIn")
end

function Q700608Trigger:TriggerOut()
    print("Q700608Trigger - TriggerOut")
end

return Q700608Trigger
