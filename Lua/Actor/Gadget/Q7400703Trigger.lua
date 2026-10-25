require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400703Trigger = class("Q7400703Trigger", GadgetActorProxy)
Q7400703Trigger.defaultAlias = "Q7400703Trigger"
local Q74007ClientConfig = require("Quest/Client/Q74007ClientConfig")

local this
local subIDs = Q74007ClientConfig.SubIDs
local npcs = Q74007ClientConfig.Npcs
local points = Q74007ClientConfig.Points
local datas = Q74007ClientConfig.Datas

function Q7400703Trigger:OnPostDataPrepare()
    print("[MainId: 74007][Trigger: Q7400703Trigger] OnPostDataPrepare")
    this = self
end

function Q7400703Trigger:OnPostComponentPrepare()
    print("[MainId: 74007][Trigger: Q7400703Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400703Trigger:TriggerIn()
    print("[MainId: 74007][Trigger: Q7400703Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400703)
    this:DestroySelf()
end

function Q7400703Trigger:PreTriggerIn()
    print("[MainId: 74007][Trigger: Q7400703Trigger] PreTriggerIn")
end

function Q7400703Trigger:LightUpTriggerIn()
    print("[MainId: 74007][Trigger: Q7400703Trigger] LightUpTriggerIn")
end

function Q7400703Trigger:TriggerOut()
    print("[MainId: 74007][Trigger: Q7400703Trigger] TriggerOut")
end

return Q7400703Trigger
