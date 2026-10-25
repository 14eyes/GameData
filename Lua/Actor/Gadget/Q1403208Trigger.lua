require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403208Trigger = class("Q1403208Trigger", GadgetActorProxy)
Q1403208Trigger.defaultAlias = "Q1403208Trigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403208Trigger:OnPostDataPrepare()
    print("Q1403208Trigger - OnPostDataPrepare")
    this = self
end

function Q1403208Trigger:OnPostComponentPrepare()
    print("Q1403208Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403208Trigger:TriggerIn()
    print("Q1403208Trigger - TriggerIn")
    actorMgr:GetActor("14032"):RequestInteraction(npcs.Npc1077.alias, "", true)
    this:DestroySelf()
end

function Q1403208Trigger:PreTriggerIn()
    print("Q1403208Trigger - PreTriggerIn")
end

function Q1403208Trigger:LightUpTriggerIn()
    print("Q1403208Trigger - LightUpTriggerIn")
end

function Q1403208Trigger:TriggerOut()
    print("Q1403208Trigger - TriggerOut")
end

return Q1403208Trigger
