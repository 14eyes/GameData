require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400423Trigger = class("Q7400423Trigger", GadgetActorProxy)
Q7400423Trigger.defaultAlias = "Q7400423Trigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400423Trigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400423Trigger] OnPostDataPrepare")
    this = self
end

function Q7400423Trigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400423Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400423Trigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400423Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400423)
    this:DestroySelf()
end

function Q7400423Trigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400423Trigger] PreTriggerIn")
end

function Q7400423Trigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400423Trigger] LightUpTriggerIn")
end

function Q7400423Trigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400423Trigger] TriggerOut")
end

return Q7400423Trigger
