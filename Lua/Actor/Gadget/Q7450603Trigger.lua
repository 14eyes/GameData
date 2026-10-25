require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7450603Trigger = class("Q7450603Trigger", GadgetActorProxy)
Q7450603Trigger.defaultAlias = "Q7450603Trigger"
local Q74506ClientConfig = require("Quest/Client/Q74506ClientConfig")

local this
local subIDs = Q74506ClientConfig.SubIDs
local npcs = Q74506ClientConfig.Npcs
local points = Q74506ClientConfig.Points
local datas = Q74506ClientConfig.Datas

function Q7450603Trigger:OnPostDataPrepare()
    print("[MainId: 74506][Trigger: Q7450603Trigger] OnPostDataPrepare")
    this = self
end

function Q7450603Trigger:OnPostComponentPrepare()
    print("[MainId: 74506][Trigger: Q7450603Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7450603Trigger:TriggerIn()
    print("[MainId: 74506][Trigger: Q7450603Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7450603)
    this:DestroySelf()
end

function Q7450603Trigger:PreTriggerIn()
    print("[MainId: 74506][Trigger: Q7450603Trigger] PreTriggerIn")
end

function Q7450603Trigger:LightUpTriggerIn()
    print("[MainId: 74506][Trigger: Q7450603Trigger] LightUpTriggerIn")
end

function Q7450603Trigger:TriggerOut()
    print("[MainId: 74506][Trigger: Q7450603Trigger] TriggerOut")
end

return Q7450603Trigger
