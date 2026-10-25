require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401803Trigger = class("Q401803Trigger", GadgetActorProxy)
Q401803Trigger.defaultAlias = "Q401803Trigger"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401803Trigger:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401803Trigger] OnPostDataPrepare")
    this = self
end

function Q401803Trigger:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401803Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401803Trigger:TriggerIn()
    print("[MainId: 4018][Trigger: Q401803Trigger] TriggerIn")
    actorMgr:GetActor("4018"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4018")
        actor:CreateQuestNpcById(401803, npcs.PaimonData.id, 0)
        actor:RequestInteraction(npcs.PaimonData.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401803Trigger:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401803Trigger] PreTriggerIn")
end

function Q401803Trigger:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401803Trigger] LightUpTriggerIn")
end

function Q401803Trigger:TriggerOut()
    print("[MainId: 4018][Trigger: Q401803Trigger] TriggerOut")
end

return Q401803Trigger
