require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400503Trigger = class("Q2400503Trigger", GadgetActorProxy)
Q2400503Trigger.defaultAlias = "Q2400503Trigger"
local Q24005ClientConfig = require("Quest/Client/Q24005ClientConfig")

local this
local subIDs = Q24005ClientConfig.SubIDs
local npcs = Q24005ClientConfig.Npcs
local points = Q24005ClientConfig.Points

function Q2400503Trigger:OnPostDataPrepare()
    print("[MainId: 24005][Trigger: Q2400503Trigger] OnPostDataPrepare")
    this = self
end

function Q2400503Trigger:OnPostComponentPrepare()
    print("[MainId: 24005][Trigger: Q2400503Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400503Trigger:TriggerIn()
    print("[MainId: 24005][Trigger: Q2400503Trigger] TriggerIn")
    actorMgr:GetActor("24005"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("24005")
        actor:CreateQuestNpcById(2400503, npcs.Npc5021Data.id, 1)
        actor:ActionSafeCall(function(arg1)
            actorMgr:GetActor("24005"):RequestInteraction(npcs.Npc5021Data.alias)
        end)

        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q2400503Trigger:PreTriggerIn()
    print("[MainId: 24005][Trigger: Q2400503Trigger] PreTriggerIn")
end

function Q2400503Trigger:LightUpTriggerIn()
    print("[MainId: 24005][Trigger: Q2400503Trigger] LightUpTriggerIn")
end

function Q2400503Trigger:TriggerOut()
    print("[MainId: 24005][Trigger: Q2400503Trigger] TriggerOut")
end

return Q2400503Trigger
