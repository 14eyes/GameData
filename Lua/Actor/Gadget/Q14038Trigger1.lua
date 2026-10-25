require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14038Trigger1 = class("Q14038Trigger1", GadgetActorProxy)
Q14038Trigger1.defaultAlias = "Q14038Trigger1"
local Q14038ClientConfig = require("Quest/Client/Q14038ClientConfig")

local this
local subIDs = Q14038ClientConfig.SubIDs
local npcs = Q14038ClientConfig.Npcs
local points = Q14038ClientConfig.Points
local datas = Q14038ClientConfig.Datas

function Q14038Trigger1:OnPostDataPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger1] OnPostDataPrepare")
    this = self
end

function Q14038Trigger1:OnPostComponentPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14038)
end

function Q14038Trigger1:TriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger1] TriggerIn")
    actorMgr:GetActor("14038"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("14038")
        actor:CreateQuestNpcById(1403814, npcs.Npc1090Data.id, 0, false, 0)
        actor:RequestInteraction(npcs.Npc1090Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14038Trigger1:PreTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger1] PreTriggerIn")
end

function Q14038Trigger1:LightUpTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger1] LightUpTriggerIn")
    actorMgr:GetActor("14038"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q14038Trigger1:TriggerOut()
    print("[MainId: 14038][Trigger: Q14038Trigger1] TriggerOut")
end

return Q14038Trigger1
