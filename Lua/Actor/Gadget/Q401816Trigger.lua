require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401816Trigger = class("Q401816Trigger", GadgetActorProxy)
Q401816Trigger.defaultAlias = "Q401816Trigger"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401816Trigger:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401816Trigger] OnPostDataPrepare")
    this = self
end

function Q401816Trigger:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401816Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401816Trigger:TriggerIn()
    print("[MainId: 4018][Trigger: Q401816Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 401816)
    this:DestroySelf()
end

function Q401816Trigger:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401816Trigger] PreTriggerIn")
end

function Q401816Trigger:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401816Trigger] LightUpTriggerIn")
end

function Q401816Trigger:TriggerOut()
    print("[MainId: 4018][Trigger: Q401816Trigger] TriggerOut")
end

return Q401816Trigger
