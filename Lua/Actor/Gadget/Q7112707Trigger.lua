require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7112707Trigger = class("Q7112707Trigger", GadgetActorProxy)
Q7112707Trigger.defaultAlias = "Q7112707Trigger"
local Q71127ClientConfig = require("Quest/Client/Q71127ClientConfig")

local this
local subIDs = Q71127ClientConfig.SubIDs
local npcs = Q71127ClientConfig.Npcs
local points = Q71127ClientConfig.Points
local datas = Q71127ClientConfig.Datas

function Q7112707Trigger:OnPostDataPrepare()
    print("[MainId: 71127][Trigger: Q7112707Trigger] OnPostDataPrepare")
    this = self
end

function Q7112707Trigger:OnPostComponentPrepare()
    print("[MainId: 71127][Trigger: Q7112707Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7112707Trigger:TriggerIn()
    print("[MainId: 71127][Trigger: Q7112707Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7112707)
    this:DestroySelf()
end

function Q7112707Trigger:PreTriggerIn()
    print("[MainId: 71127][Trigger: Q7112707Trigger] PreTriggerIn")
end

function Q7112707Trigger:LightUpTriggerIn()
    print("[MainId: 71127][Trigger: Q7112707Trigger] LightUpTriggerIn")
end

function Q7112707Trigger:TriggerOut()
    print("[MainId: 71127][Trigger: Q7112707Trigger] TriggerOut")
end

return Q7112707Trigger
