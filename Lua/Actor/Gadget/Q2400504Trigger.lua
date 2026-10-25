require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400504Trigger = class("Q2400504Trigger", GadgetActorProxy)
Q2400504Trigger.defaultAlias = "Q2400504Trigger"
local Q24005ClientConfig = require("Quest/Client/Q24005ClientConfig")

local this
local subIDs = Q24005ClientConfig.SubIDs
local npcs = Q24005ClientConfig.Npcs
local points = Q24005ClientConfig.Points

function Q2400504Trigger:OnPostDataPrepare()
    print("[MainId: 24005][Trigger: Q2400504Trigger] OnPostDataPrepare")
    this = self
end

function Q2400504Trigger:OnPostComponentPrepare()
    print("[MainId: 24005][Trigger: Q2400504Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400504Trigger:TriggerIn()
    print("[MainId: 24005][Trigger: Q2400504Trigger] TriggerIn")
    actorMgr:GetActor("24005"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("24005"):RequestInteraction(npcs.Npc5057Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q2400504Trigger:PreTriggerIn()
    print("[MainId: 24005][Trigger: Q2400504Trigger] PreTriggerIn")
end

function Q2400504Trigger:LightUpTriggerIn()
    print("[MainId: 24005][Trigger: Q2400504Trigger] LightUpTriggerIn")
end

function Q2400504Trigger:TriggerOut()
    print("[MainId: 24005][Trigger: Q2400504Trigger] TriggerOut")
end

return Q2400504Trigger
