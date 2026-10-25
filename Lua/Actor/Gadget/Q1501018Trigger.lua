require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501018Trigger = class("Q1501018Trigger", GadgetActorProxy)
Q1501018Trigger.defaultAlias = "Q1501018Trigger"
local Q15010ClientConfig = require("Quest/Client/Q15010ClientConfig")

local this
local subIDs = Q15010ClientConfig.SubIDs
local datas = Q15010ClientConfig.Datas
local npcs = Q15010ClientConfig.Npcs
local points = Q15010ClientConfig.Points

function Q1501018Trigger:OnPostDataPrepare()
    print("Q1501018Trigger - OnPostDataPrepare")
    this = self
end

function Q1501018Trigger:OnPostComponentPrepare()
    print("Q1501018Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15010)
end

function Q1501018Trigger:TriggerIn()
    print("Q1501018Trigger - TriggerIn")
    actorMgr:GetActor("15010"):GetQuestNpcActor(npcs.Npc1025.alias, 15010):SetPlayerNpcEnergyType(2)
    this:DestroySelf()
end

function Q1501018Trigger:PreTriggerIn()
    print("Q1501018Trigger - PreTriggerIn")
end

function Q1501018Trigger:LightUpTriggerIn()
    print("Q1501018Trigger - LightUpTriggerIn")
end

function Q1501018Trigger:TriggerOut()
    print("Q1501018Trigger - TriggerOut")
end

return Q1501018Trigger
