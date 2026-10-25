require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74508Trigger = class("Q74508Trigger", GadgetActorProxy)
Q74508Trigger.defaultAlias = "Q74508Trigger"
local Q74508ClientConfig = require("Quest/Client/Q74508ClientConfig")

local this
local subIDs = Q74508ClientConfig.SubIDs
local npcs = Q74508ClientConfig.Npcs

function Q74508Trigger:OnPostDataPrepare()
    print("[MainId: 74508][Trigger: Q74508Trigger] OnPostDataPrepare")
    this = self
end

function Q74508Trigger:OnPostComponentPrepare()
    print("[MainId: 74508][Trigger: Q74508Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74508Trigger:TriggerIn()
    print("[MainId: 74508][Trigger: Q74508Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74508")
    actor:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    actor:RequestInteraction(npcs.Npc30419Data.alias, "", true)
    this:DestroySelf()
end

function Q74508Trigger:PreTriggerIn()
    print("[MainId: 74508][Trigger: Q74508Trigger] PreTriggerIn")
end

function Q74508Trigger:LightUpTriggerIn()
    print("[MainId: 74508][Trigger: Q74508Trigger] LightUpTriggerIn")
end

function Q74508Trigger:TriggerOut()
    print("[MainId: 74508][Trigger: Q74508Trigger] TriggerOut")
end

return Q74508Trigger
