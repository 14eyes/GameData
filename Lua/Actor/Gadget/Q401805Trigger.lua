require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401805Trigger = class("Q401805Trigger", GadgetActorProxy)
Q401805Trigger.defaultAlias = "Q401805Trigger"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401805Trigger:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401805Trigger] OnPostDataPrepare")
    this = self
end

function Q401805Trigger:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401805Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(23, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401805Trigger:TriggerIn()
    print("[MainId: 4018][Trigger: Q401805Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 401805)
    this:DestroySelf()
end

function Q401805Trigger:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401805Trigger] PreTriggerIn")
end

function Q401805Trigger:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401805Trigger] LightUpTriggerIn")
end

function Q401805Trigger:TriggerOut()
    print("[MainId: 4018][Trigger: Q401805Trigger] TriggerOut")
end

return Q401805Trigger
