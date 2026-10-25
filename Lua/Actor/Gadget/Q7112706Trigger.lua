require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7112706Trigger = class("Q7112706Trigger", GadgetActorProxy)
Q7112706Trigger.defaultAlias = "Q7112706Trigger"
local Q71127ClientConfig = require("Quest/Client/Q71127ClientConfig")

local this
local subIDs = Q71127ClientConfig.SubIDs
local npcs = Q71127ClientConfig.Npcs
local points = Q71127ClientConfig.Points
local datas = Q71127ClientConfig.Datas

function Q7112706Trigger:OnPostDataPrepare()
    print("[MainId: 71127][Trigger: Q7112706Trigger] OnPostDataPrepare")
    this = self
end

function Q7112706Trigger:OnPostComponentPrepare()
    print("[MainId: 71127][Trigger: Q7112706Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7112706Trigger:TriggerIn()
    print("[MainId: 71127][Trigger: Q7112706Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7112706)
    this:DestroySelf()
end

function Q7112706Trigger:PreTriggerIn()
    print("[MainId: 71127][Trigger: Q7112706Trigger] PreTriggerIn")
end

function Q7112706Trigger:LightUpTriggerIn()
    print("[MainId: 71127][Trigger: Q7112706Trigger] LightUpTriggerIn")
end

function Q7112706Trigger:TriggerOut()
    print("[MainId: 71127][Trigger: Q7112706Trigger] TriggerOut")
end

return Q7112706Trigger
