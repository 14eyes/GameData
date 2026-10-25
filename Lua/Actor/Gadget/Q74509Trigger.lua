require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74509Trigger = class("Q74509Trigger", GadgetActorProxy)
Q74509Trigger.defaultAlias = "Q74509Trigger"
local Q74509ClientConfig = require("Quest/Client/Q74509ClientConfig")

local this
local subIDs = Q74509ClientConfig.SubIDs
local npcs = Q74509ClientConfig.Npcs

function Q74509Trigger:OnPostDataPrepare()
    print("[MainId: 74509][Trigger: Q74509Trigger] OnPostDataPrepare")
    this = self
end

function Q74509Trigger:OnPostComponentPrepare()
    print("[MainId: 74509][Trigger: Q74509Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74509Trigger:TriggerIn()
    print("[MainId: 74509][Trigger: Q74509Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74509")
    actor:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    actor:RequestInteraction(npcs.Npc30419Data.alias, "", true)
    this:DestroySelf()
end

function Q74509Trigger:PreTriggerIn()
    print("[MainId: 74509][Trigger: Q74509Trigger] PreTriggerIn")
end

function Q74509Trigger:LightUpTriggerIn()
    print("[MainId: 74509][Trigger: Q74509Trigger] LightUpTriggerIn")
end

function Q74509Trigger:TriggerOut()
    print("[MainId: 74509][Trigger: Q74509Trigger] TriggerOut")
end

return Q74509Trigger
