require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401808Trigger = class("Q401808Trigger", GadgetActorProxy)
Q401808Trigger.defaultAlias = "Q401808Trigger"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401808Trigger:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401808Trigger] OnPostDataPrepare")
    this = self
end

function Q401808Trigger:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401808Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(11, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401808Trigger:TriggerIn()
    print("[MainId: 4018][Trigger: Q401808Trigger] TriggerIn")
    actorMgr:GetActor("4018"):RequestInteraction(npcs.Npc13518Data.alias, "", true)
    this:DestroySelf()
end

function Q401808Trigger:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401808Trigger] PreTriggerIn")
end

function Q401808Trigger:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401808Trigger] LightUpTriggerIn")
end

function Q401808Trigger:TriggerOut()
    print("[MainId: 4018][Trigger: Q401808Trigger] TriggerOut")
end

return Q401808Trigger
