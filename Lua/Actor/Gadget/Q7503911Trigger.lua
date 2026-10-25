require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503911Trigger = class("Q7503911Trigger", GadgetActorProxy)
Q7503911Trigger.defaultAlias = "Q7503911Trigger"
local Q75039ClientConfig = require("Quest/Client/Q75039ClientConfig")

local this
local subIDs = Q75039ClientConfig.SubIDs
local npcs = Q75039ClientConfig.Npcs
local datas = Q75039ClientConfig.Datas

function Q7503911Trigger:OnPostDataPrepare()
    print("[MainId: 75039][Trigger: Q7503911Trigger] OnPostDataPrepare")
    this = self
end

function Q7503911Trigger:OnPostComponentPrepare()
    print("[MainId: 75039][Trigger: Q7503911Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75039)
end

function Q7503911Trigger:TriggerIn()
    print("[MainId: 75039][Trigger: Q7503911Trigger] TriggerIn")
    actorMgr:GetActor("75039"):RequestInteraction(npcs.Npc21460Data.alias, "", true)
    this:DestroySelf()
end

function Q7503911Trigger:PreTriggerIn()
    print("[MainId: 75039][Trigger: Q7503911Trigger] PreTriggerIn")
end

function Q7503911Trigger:LightUpTriggerIn()
    print("[MainId: 75039][Trigger: Q7503911Trigger] LightUpTriggerIn")
end

function Q7503911Trigger:TriggerOut()
    print("[MainId: 75039][Trigger: Q7503911Trigger] TriggerOut")
end

return Q7503911Trigger
