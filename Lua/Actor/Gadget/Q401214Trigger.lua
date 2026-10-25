require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401214Trigger = class("Q401214Trigger", GadgetActorProxy)
Q401214Trigger.defaultAlias = "Q401214Trigger"
local Q4012ClientConfig = require("Quest/Client/Q4012ClientConfig")

local this
local subIDs = Q4012ClientConfig.SubIDs
local npcs = Q4012ClientConfig.Npcs
local points = Q4012ClientConfig.Points
local datas = Q4012ClientConfig.Datas

function Q401214Trigger:OnPostDataPrepare()
    print("[MainId: 4012][Trigger: Q401214Trigger] OnPostDataPrepare")
    this = self
end

function Q401214Trigger:OnPostComponentPrepare()
    print("[MainId: 4012][Trigger: Q401214Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401214Trigger:TriggerIn()
    print("[MainId: 4012][Trigger: Q401214Trigger] TriggerIn")
    actorMgr:GetActor("4012"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4012")
        actor:CreateQuestNpcById(401214, npcs.Npc13515Data.id, 0)
        actor:RequestInteraction(npcs.Npc13515Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401214Trigger:PreTriggerIn()
    print("[MainId: 4012][Trigger: Q401214Trigger] PreTriggerIn")
end

function Q401214Trigger:LightUpTriggerIn()
    print("[MainId: 4012][Trigger: Q401214Trigger] LightUpTriggerIn")
end

function Q401214Trigger:TriggerOut()
    print("[MainId: 4012][Trigger: Q401214Trigger] TriggerOut")
end

return Q401214Trigger
