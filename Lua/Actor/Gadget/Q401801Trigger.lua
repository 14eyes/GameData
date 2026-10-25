require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401801Trigger = class("Q401801Trigger", GadgetActorProxy)
Q401801Trigger.defaultAlias = "Q401801Trigger"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401801Trigger:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401801Trigger] OnPostDataPrepare")
    this = self
end

function Q401801Trigger:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401801Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401801Trigger:TriggerIn()
    print("[MainId: 4018][Trigger: Q401801Trigger] TriggerIn")
    actorMgr:GetActor("4018"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("4018"):RequestInteraction(npcs.Npc13512Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401801Trigger:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401801Trigger] PreTriggerIn")
end

function Q401801Trigger:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401801Trigger] LightUpTriggerIn")
end

function Q401801Trigger:TriggerOut()
    print("[MainId: 4018][Trigger: Q401801Trigger] TriggerOut")
end

return Q401801Trigger
