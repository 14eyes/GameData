require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401809Trigger = class("Q401809Trigger", GadgetActorProxy)
Q401809Trigger.defaultAlias = "Q401809Trigger"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401809Trigger:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401809Trigger] OnPostDataPrepare")
    this = self
end

function Q401809Trigger:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401809Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401809Trigger:TriggerIn()
    print("[MainId: 4018][Trigger: Q401809Trigger] TriggerIn")
    actorMgr:GetActor("4018"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4018")
        actor:CreateQuestNpcById(401809, npcs.Npc13518Data.id, 0)
        actor:RequestInteraction(npcs.Npc13518Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401809Trigger:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401809Trigger] PreTriggerIn")
end

function Q401809Trigger:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401809Trigger] LightUpTriggerIn")
end

function Q401809Trigger:TriggerOut()
    print("[MainId: 4018][Trigger: Q401809Trigger] TriggerOut")
end

return Q401809Trigger
