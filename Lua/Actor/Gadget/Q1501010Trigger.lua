require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501010Trigger = class("Q1501010Trigger", GadgetActorProxy)
Q1501010Trigger.defaultAlias = "Q1501010Trigger"
local Q15010ClientConfig = require("Quest/Client/Q15010ClientConfig")

local this
local subIDs = Q15010ClientConfig.SubIDs
local datas = Q15010ClientConfig.Datas
local npcs = Q15010ClientConfig.Npcs
local points = Q15010ClientConfig.Points

function Q1501010Trigger:OnPostDataPrepare()
    print("Q1501010Trigger - OnPostDataPrepare")
    this = self
end

function Q1501010Trigger:OnPostComponentPrepare()
    print("Q1501010Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(11, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15010)
end

function Q1501010Trigger:TriggerIn()
    print("Q1501010Trigger - TriggerIn")
    actorMgr:GetActor("15010"):RequestInteraction(npcs.Npc14230.alias, "", true)
    this:DestroySelf()
end

function Q1501010Trigger:PreTriggerIn()
    print("Q1501010Trigger - PreTriggerIn")
end

function Q1501010Trigger:LightUpTriggerIn()
    print("Q1501010Trigger - LightUpTriggerIn")
end

function Q1501010Trigger:TriggerOut()
    print("Q1501010Trigger - TriggerOut")
end

return Q1501010Trigger
