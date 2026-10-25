require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501201Trigger = class("Q1501201Trigger", GadgetActorProxy)
Q1501201Trigger.defaultAlias = "Q1501201Trigger"
local Q15012ClientConfig = require("Quest/Client/Q15012ClientConfig")

local this
local subIDs = Q15012ClientConfig.SubIDs
local npcs = Q15012ClientConfig.Npcs
local points = Q15012ClientConfig.Points
local datas = Q15012ClientConfig.Datas

function Q1501201Trigger:OnPostDataPrepare()
    print("[MainId: 15012][Trigger: Q1501201Trigger] OnPostDataPrepare")
    this = self
end

function Q1501201Trigger:OnPostComponentPrepare()
    print("[MainId: 15012][Trigger: Q1501201Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15012)
end

function Q1501201Trigger:TriggerIn()
    print("[MainId: 15012][Trigger: Q1501201Trigger] TriggerIn")
    actorMgr:GetActor("15012"):RequestInteraction(npcs.Npc6084Data.alias, "", true)
    this:DestroySelf()
end

function Q1501201Trigger:PreTriggerIn()
    print("[MainId: 15012][Trigger: Q1501201Trigger] PreTriggerIn")
end

function Q1501201Trigger:LightUpTriggerIn()
    print("[MainId: 15012][Trigger: Q1501201Trigger] LightUpTriggerIn")
end

function Q1501201Trigger:TriggerOut()
    print("[MainId: 15012][Trigger: Q1501201Trigger] TriggerOut")
end

return Q1501201Trigger
