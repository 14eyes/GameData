require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1404403Trigger = class("Q1404403Trigger", GadgetActorProxy)
Q1404403Trigger.defaultAlias = "Q1404403Trigger"
local Q14044ClientConfig = require("Quest/Client/Q14044ClientConfig")

local this
local subIDs = Q14044ClientConfig.SubIDs
local datas = Q14044ClientConfig.Datas
local npcs = Q14044ClientConfig.Npcs
local points = Q14044ClientConfig.Points

function Q1404403Trigger:OnPostDataPrepare()
    print("Q1404403Trigger - OnPostDataPrepare")
    this = self
end

function Q1404403Trigger:OnPostComponentPrepare()
    print("Q1404403Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14044)
end

function Q1404403Trigger:TriggerIn()
    print("Q1404403Trigger - TriggerIn")
    actorMgr:GetActor("14044"):RequestInteraction(npcs.Npc1308.alias, "", true)
    this:DestroySelf()
end

function Q1404403Trigger:PreTriggerIn()
    print("Q1404403Trigger - PreTriggerIn")
end

function Q1404403Trigger:LightUpTriggerIn()
    print("Q1404403Trigger - LightUpTriggerIn")
end

function Q1404403Trigger:TriggerOut()
    print("Q1404403Trigger - TriggerOut")
end

return Q1404403Trigger
