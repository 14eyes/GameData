require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503002Trigger = class("Q7503002Trigger", GadgetActorProxy)
Q7503002Trigger.defaultAlias = "Q7503002Trigger"
local Q75030ClientConfig = require("Quest/Client/Q75030ClientConfig")

local this
local subIDs = Q75030ClientConfig.SubIDs
local npcs = Q75030ClientConfig.Npcs
local datas = Q75030ClientConfig.Datas

function Q7503002Trigger:OnPostDataPrepare()
    print("[MainId: 75030][Trigger: Q7503002Trigger] OnPostDataPrepare")
    this = self
end

function Q7503002Trigger:OnPostComponentPrepare()
    print("[MainId: 75030][Trigger: Q7503002Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75030)
end

function Q7503002Trigger:TriggerIn()
    print("[MainId: 75030][Trigger: Q7503002Trigger] TriggerIn")
    actorMgr:GetActor("75030"):RequestInteraction(npcs.Npc21706Data.alias, "", true)
end

function Q7503002Trigger:PreTriggerIn()
    print("[MainId: 75030][Trigger: Q7503002Trigger] PreTriggerIn")
end

function Q7503002Trigger:LightUpTriggerIn()
    print("[MainId: 75030][Trigger: Q7503002Trigger] LightUpTriggerIn")
end

function Q7503002Trigger:TriggerOut()
    print("[MainId: 75030][Trigger: Q7503002Trigger] TriggerOut")
end

return Q7503002Trigger
