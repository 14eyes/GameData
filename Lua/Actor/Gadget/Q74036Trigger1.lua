require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74036Trigger1 = class("Q74036Trigger1", GadgetActorProxy)
Q74036Trigger1.defaultAlias = "Q74036Trigger1"
local Q74036ClientConfig = require("Quest/Client/Q74036ClientConfig")

local this
local subIDs = Q74036ClientConfig.SubIDs
local npcs = Q74036ClientConfig.Npcs
local points = Q74036ClientConfig.Points

function Q74036Trigger1:OnPostDataPrepare()
    print("[MainId: 74036][Trigger: Q74036Trigger1] OnPostDataPrepare")
    this = self
end

function Q74036Trigger1:OnPostComponentPrepare()
    print("[MainId: 74036][Trigger: Q74036Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74036Trigger1:TriggerIn()
    print("[MainId: 74036][Trigger: Q74036Trigger1] TriggerIn")
    actorMgr:GetActor("74036"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("74036")
        actor:CreateQuestNpcById(7403605, npcs.Npc5084Data.id, 0)
        actor:RequestInteraction(npcs.Npc5084Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q74036Trigger1:PreTriggerIn()
    print("[MainId: 74036][Trigger: Q74036Trigger1] PreTriggerIn")
end

function Q74036Trigger1:LightUpTriggerIn()
    print("[MainId: 74036][Trigger: Q74036Trigger1] LightUpTriggerIn")
end

function Q74036Trigger1:TriggerOut()
    print("[MainId: 74036][Trigger: Q74036Trigger1] TriggerOut")
end

return Q74036Trigger1
