require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400421Trigger = class("Q7400421Trigger", GadgetActorProxy)
Q7400421Trigger.defaultAlias = "Q7400421Trigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400421Trigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400421Trigger] OnPostDataPrepare")
    this = self
end

function Q7400421Trigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400421Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400421Trigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400421Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400421)
    this:DestroySelf()
end

function Q7400421Trigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400421Trigger] PreTriggerIn")
end

function Q7400421Trigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400421Trigger] LightUpTriggerIn")
end

function Q7400421Trigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400421Trigger] TriggerOut")
end

return Q7400421Trigger
