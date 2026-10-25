require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506402Trigger = class("Q7506402Trigger", GadgetActorProxy)
Q7506402Trigger.defaultAlias = "Q7506402Trigger"
local Q75064ClientConfig = require("Quest/Client/Q75064ClientConfig")

local this
local subIDs = Q75064ClientConfig.SubIDs
local npcs = Q75064ClientConfig.Npcs
local datas = Q75064ClientConfig.Datas

function Q7506402Trigger:OnPostDataPrepare()
    print("[MainId: 75064][Trigger: Q7506402Trigger] OnPostDataPrepare")
    this = self
end

function Q7506402Trigger:OnPostComponentPrepare()
    print("[MainId: 75064][Trigger: Q7506402Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75064)
end

function Q7506402Trigger:TriggerIn()
    print("[MainId: 75064][Trigger: Q7506402Trigger] TriggerIn")
    local actor = actorMgr:GetActor("75064")
    actor:RequestInteraction(npcs.Npc21460Data.alias, "", true)
    actor:RequestInteraction(npcs.Npc21586Data.alias, "", true)
end

function Q7506402Trigger:PreTriggerIn()
    print("[MainId: 75064][Trigger: Q7506402Trigger] PreTriggerIn")
end

function Q7506402Trigger:LightUpTriggerIn()
    print("[MainId: 75064][Trigger: Q7506402Trigger] LightUpTriggerIn")
end

function Q7506402Trigger:TriggerOut()
    print("[MainId: 75064][Trigger: Q7506402Trigger] TriggerOut")
end

return Q7506402Trigger
