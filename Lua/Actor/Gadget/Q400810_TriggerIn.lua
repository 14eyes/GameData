require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400810_TriggerIn = class("Q400810_TriggerIn", GadgetActorProxy)
Q400810_TriggerIn.defaultAlias = "Q400810_TriggerIn"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400810_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400810_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400810_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400810_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400810_TriggerIn:TriggerIn()
    print("[MainId: 4008][Trigger: Q400810_TriggerIn] TriggerIn")
    this:DestroySelf()
end

function Q400810_TriggerIn:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400810_TriggerIn] PreTriggerIn")
    local actor = actorMgr:GetActor("4008")
    actor:CreateQuestNpcById(400810, npcs.Npc1071Data.id, 0)
    actor:CreateQuestNpcById(400810, npcs.Npc1078Data.id, 0)
    actor:ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 0, false, true)
end

function Q400810_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400810_TriggerIn] LightUpTriggerIn")
    actorMgr:GetActor("4008"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("4008"):RequestInteraction(npcs.Npc1078Data.alias)
    end, nil, nil, 0, false, true)
end

function Q400810_TriggerIn:TriggerOut()
    print("[MainId: 4008][Trigger: Q400810_TriggerIn] TriggerOut")
end

return Q400810_TriggerIn
