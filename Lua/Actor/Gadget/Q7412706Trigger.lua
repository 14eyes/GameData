require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7412706Trigger = class("Q7412706Trigger", GadgetActorProxy)
Q7412706Trigger.defaultAlias = "Q7412706Trigger"
local Q74127ClientConfig = require("Quest/Client/Q74127ClientConfig")

local this
local subIDs = Q74127ClientConfig.SubIDs
local npcs = Q74127ClientConfig.Npcs
local points = Q74127ClientConfig.Points
local datas = Q74127ClientConfig.Datas

function Q7412706Trigger:OnPostDataPrepare()
    print("[MainId: 74127][Trigger: Q7412706Trigger] OnPostDataPrepare")
    this = self
end

function Q7412706Trigger:OnPostComponentPrepare()
    print("[MainId: 74127][Trigger: Q7412706Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7412706Trigger:TriggerIn()
    print("[MainId: 74127][Trigger: Q7412706Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7412706)
    this:DestroySelf()
end

function Q7412706Trigger:PreTriggerIn()
    print("[MainId: 74127][Trigger: Q7412706Trigger] PreTriggerIn")
end

function Q7412706Trigger:LightUpTriggerIn()
    print("[MainId: 74127][Trigger: Q7412706Trigger] LightUpTriggerIn")
end

function Q7412706Trigger:TriggerOut()
    print("[MainId: 74127][Trigger: Q7412706Trigger] TriggerOut")
end

return Q7412706Trigger
