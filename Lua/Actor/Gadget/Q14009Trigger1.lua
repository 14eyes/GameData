require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger1 = class("Q14009Trigger1", GadgetActorProxy)
Q14009Trigger1.defaultAlias = "Q14009Trigger1"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger1:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger1] OnPostDataPrepare")
    this = self
end

function Q14009Trigger1:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger1:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger1] TriggerIn")
    actorMgr:GetActor("14009"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("14009")
        actor:CreateQuestNpcById(1400903, npcs.Npc1076Data.id, 0)
        actor:RequestInteraction(npcs.Npc1076Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14009Trigger1:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger1] PreTriggerIn")
end

function Q14009Trigger1:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger1] LightUpTriggerIn")
end

function Q14009Trigger1:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger1] TriggerOut")
end

return Q14009Trigger1
