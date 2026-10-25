require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501013Trigger = class("Q1501013Trigger", GadgetActorProxy)
Q1501013Trigger.defaultAlias = "Q1501013Trigger"
local Q15010ClientConfig = require("Quest/Client/Q15010ClientConfig")

local this
local subIDs = Q15010ClientConfig.SubIDs
local datas = Q15010ClientConfig.Datas
local npcs = Q15010ClientConfig.Npcs
local points = Q15010ClientConfig.Points

function Q1501013Trigger:OnPostDataPrepare()
    print("Q1501013Trigger - OnPostDataPrepare")
    this = self
end

function Q1501013Trigger:OnPostComponentPrepare()
    print("Q1501013Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15010)
end

function Q1501013Trigger:TriggerIn()
    print("Q1501013Trigger - TriggerIn")
    actorMgr:GetActor("15010"):RequestInteraction(npcs.Npc14321.alias, "", true)
    this:DestroySelf()
end

function Q1501013Trigger:PreTriggerIn()
    print("Q1501013Trigger - PreTriggerIn")
end

function Q1501013Trigger:LightUpTriggerIn()
    print("Q1501013Trigger - LightUpTriggerIn")
end

function Q1501013Trigger:TriggerOut()
    print("Q1501013Trigger - TriggerOut")
end

return Q1501013Trigger
