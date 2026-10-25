require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400702Trigger = class("Q7400702Trigger", GadgetActorProxy)
Q7400702Trigger.defaultAlias = "Q7400702Trigger"
local Q74007ClientConfig = require("Quest/Client/Q74007ClientConfig")

local this
local subIDs = Q74007ClientConfig.SubIDs
local npcs = Q74007ClientConfig.Npcs
local points = Q74007ClientConfig.Points
local datas = Q74007ClientConfig.Datas

function Q7400702Trigger:OnPostDataPrepare()
    print("[MainId: 74007][Trigger: Q7400702Trigger] OnPostDataPrepare")
    this = self
end

function Q7400702Trigger:OnPostComponentPrepare()
    print("[MainId: 74007][Trigger: Q7400702Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400702Trigger:TriggerIn()
    print("[MainId: 74007][Trigger: Q7400702Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400702)
    this:DestroySelf()
end

function Q7400702Trigger:PreTriggerIn()
    print("[MainId: 74007][Trigger: Q7400702Trigger] PreTriggerIn")
end

function Q7400702Trigger:LightUpTriggerIn()
    print("[MainId: 74007][Trigger: Q7400702Trigger] LightUpTriggerIn")
end

function Q7400702Trigger:TriggerOut()
    print("[MainId: 74007][Trigger: Q7400702Trigger] TriggerOut")
end

return Q7400702Trigger
