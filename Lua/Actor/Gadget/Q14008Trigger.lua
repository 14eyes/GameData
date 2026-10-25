require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14008Trigger = class("Q14008Trigger", GadgetActorProxy)
Q14008Trigger.defaultAlias = "Q14008Trigger"
local Q14008ClientConfig = require("Quest/Client/Q14008ClientConfig")

local this
local subIDs = Q14008ClientConfig.SubIDs
local npcs = Q14008ClientConfig.Npcs
local points = Q14008ClientConfig.Points
local datas = Q14008ClientConfig.Datas

function Q14008Trigger:OnPostDataPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger] OnPostDataPrepare")
    this = self
end

function Q14008Trigger:OnPostComponentPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14008Trigger:TriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger] TriggerIn")
    actorMgr:GetActor("14008"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("14008")
        actor:CreateQuestNpcById(1400801, npcs.Npc1076Data.id, 0)
        actor:RequestInteraction(npcs.Npc1076Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14008Trigger:PreTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger] PreTriggerIn")
end

function Q14008Trigger:LightUpTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger] LightUpTriggerIn")
end

function Q14008Trigger:TriggerOut()
    print("[MainId: 14008][Trigger: Q14008Trigger] TriggerOut")
end

return Q14008Trigger
