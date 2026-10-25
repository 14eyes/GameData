require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400711Trigger = class("Q7400711Trigger", GadgetActorProxy)
Q7400711Trigger.defaultAlias = "Q7400711Trigger"
local Q74007ClientConfig = require("Quest/Client/Q74007ClientConfig")

local this
local subIDs = Q74007ClientConfig.SubIDs
local npcs = Q74007ClientConfig.Npcs
local points = Q74007ClientConfig.Points
local datas = Q74007ClientConfig.Datas

function Q7400711Trigger:OnPostDataPrepare()
    print("[MainId: 74007][Trigger: Q7400711Trigger] OnPostDataPrepare")
    this = self
end

function Q7400711Trigger:OnPostComponentPrepare()
    print("[MainId: 74007][Trigger: Q7400711Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400711Trigger:TriggerIn()
    print("[MainId: 74007][Trigger: Q7400711Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400711)
    this:DestroySelf()
end

function Q7400711Trigger:PreTriggerIn()
    print("[MainId: 74007][Trigger: Q7400711Trigger] PreTriggerIn")
end

function Q7400711Trigger:LightUpTriggerIn()
    print("[MainId: 74007][Trigger: Q7400711Trigger] LightUpTriggerIn")
end

function Q7400711Trigger:TriggerOut()
    print("[MainId: 74007][Trigger: Q7400711Trigger] TriggerOut")
end

return Q7400711Trigger
