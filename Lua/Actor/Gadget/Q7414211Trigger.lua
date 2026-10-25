require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414211Trigger = class("Q7414211Trigger", GadgetActorProxy)
Q7414211Trigger.defaultAlias = "Q7414211Trigger"
local Q74142ClientConfig = require("Quest/Client/Q74142ClientConfig")

local this
local subIDs = Q74142ClientConfig.SubIDs
local npcs = Q74142ClientConfig.Npcs
local points = Q74142ClientConfig.Points
local datas = Q74142ClientConfig.Datas

function Q7414211Trigger:OnPostDataPrepare()
    print("[MainId: 74142][Trigger: Q7414211Trigger] OnPostDataPrepare")
    this = self
end

function Q7414211Trigger:OnPostComponentPrepare()
    print("[MainId: 74142][Trigger: Q7414211Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414211Trigger:TriggerIn()
    print("[MainId: 74142][Trigger: Q7414211Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414211)
    this:DestroySelf()
end

function Q7414211Trigger:PreTriggerIn()
    print("[MainId: 74142][Trigger: Q7414211Trigger] PreTriggerIn")
end

function Q7414211Trigger:LightUpTriggerIn()
    print("[MainId: 74142][Trigger: Q7414211Trigger] LightUpTriggerIn")
end

function Q7414211Trigger:TriggerOut()
    print("[MainId: 74142][Trigger: Q7414211Trigger] TriggerOut")
end

return Q7414211Trigger
