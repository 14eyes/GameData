require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74035Trigger1 = class("Q74035Trigger1", GadgetActorProxy)
Q74035Trigger1.defaultAlias = "Q74035Trigger1"
local Q74035ClientConfig = require("Quest/Client/Q74035ClientConfig")

local this
local subIDs = Q74035ClientConfig.SubIDs
local npcs = Q74035ClientConfig.Npcs
local points = Q74035ClientConfig.Points

function Q74035Trigger1:OnPostDataPrepare()
    print("[MainId: 74035][Trigger: Q74035Trigger1] OnPostDataPrepare")
    this = self
end

function Q74035Trigger1:OnPostComponentPrepare()
    print("[MainId: 74035][Trigger: Q74035Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74035Trigger1:TriggerIn()
    print("[MainId: 74035][Trigger: Q74035Trigger1] TriggerIn")
    actorMgr:GetActor("74035"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("74035")
        actor:CreateQuestNpcById(7403510, npcs.Npc5084Data.id, 0)
        actor:RequestInteraction(npcs.Npc5084Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q74035Trigger1:PreTriggerIn()
    print("[MainId: 74035][Trigger: Q74035Trigger1] PreTriggerIn")
end

function Q74035Trigger1:LightUpTriggerIn()
    print("[MainId: 74035][Trigger: Q74035Trigger1] LightUpTriggerIn")
end

function Q74035Trigger1:TriggerOut()
    print("[MainId: 74035][Trigger: Q74035Trigger1] TriggerOut")
end

return Q74035Trigger1
