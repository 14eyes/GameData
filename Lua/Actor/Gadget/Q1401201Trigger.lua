require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401201Trigger = class("Q1401201Trigger", GadgetActorProxy)
Q1401201Trigger.defaultAlias = "Q1401201Trigger"
local Q14012ClientConfig = require("Quest/Client/Q14012ClientConfig")

local this
local subIDs = Q14012ClientConfig.SubIDs
local npcs = Q14012ClientConfig.Npcs
local points = Q14012ClientConfig.Points
local datas = Q14012ClientConfig.Datas

function Q1401201Trigger:OnPostDataPrepare()
    print("[MainId: 14012][Trigger: Q1401201Trigger] OnPostDataPrepare")
    this = self
end

function Q1401201Trigger:OnPostComponentPrepare()
    print("[MainId: 14012][Trigger: Q1401201Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(85, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401201Trigger:TriggerIn()
    print("[MainId: 14012][Trigger: Q1401201Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1401201)
    this:DestroySelf()
end

function Q1401201Trigger:PreTriggerIn()
    print("[MainId: 14012][Trigger: Q1401201Trigger] PreTriggerIn")
end

function Q1401201Trigger:LightUpTriggerIn()
    print("[MainId: 14012][Trigger: Q1401201Trigger] LightUpTriggerIn")
end

function Q1401201Trigger:TriggerOut()
    print("[MainId: 14012][Trigger: Q1401201Trigger] TriggerOut")
end

return Q1401201Trigger
