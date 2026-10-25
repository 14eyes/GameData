require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14008Trigger1 = class("Q14008Trigger1", GadgetActorProxy)
Q14008Trigger1.defaultAlias = "Q14008Trigger1"
local Q14008ClientConfig = require("Quest/Client/Q14008ClientConfig")

local this
local subIDs = Q14008ClientConfig.SubIDs
local npcs = Q14008ClientConfig.Npcs
local points = Q14008ClientConfig.Points
local datas = Q14008ClientConfig.Datas

function Q14008Trigger1:OnPostDataPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger1] OnPostDataPrepare")
    this = self
end

function Q14008Trigger1:OnPostComponentPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger1] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(60, 20, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14008Trigger1:TriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger1] TriggerIn")
    actorMgr:GetActor("14008"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("14008")
        actor:CreateQuestNpcById(1400808, npcs.Npc1076Data.id, 0)
        actor:RequestInteraction(npcs.Npc1076Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14008Trigger1:PreTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger1] PreTriggerIn")
end

function Q14008Trigger1:LightUpTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger1] LightUpTriggerIn")
    actorMgr:GetActor("14008"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q14008Trigger1:TriggerOut()
    print("[MainId: 14008][Trigger: Q14008Trigger1] TriggerOut")
end

return Q14008Trigger1
