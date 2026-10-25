require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400805Trigger = class("Q7400805Trigger", GadgetActorProxy)
Q7400805Trigger.defaultAlias = "Q7400805Trigger"
local Q74008ClientConfig = require("Quest/Client/Q74008ClientConfig")

local this
local subIDs = Q74008ClientConfig.SubIDs
local npcs = Q74008ClientConfig.Npcs
local points = Q74008ClientConfig.Points
local datas = Q74008ClientConfig.Datas

function Q7400805Trigger:OnPostDataPrepare()
    print("[MainId: 74008][Trigger: Q7400805Trigger] OnPostDataPrepare")
    this = self
end

function Q7400805Trigger:OnPostComponentPrepare()
    print("[MainId: 74008][Trigger: Q7400805Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400805Trigger:TriggerIn()
    print("[MainId: 74008][Trigger: Q7400805Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400805)
    this:DestroySelf()
end

function Q7400805Trigger:PreTriggerIn()
    print("[MainId: 74008][Trigger: Q7400805Trigger] PreTriggerIn")
end

function Q7400805Trigger:LightUpTriggerIn()
    print("[MainId: 74008][Trigger: Q7400805Trigger] LightUpTriggerIn")
end

function Q7400805Trigger:TriggerOut()
    print("[MainId: 74008][Trigger: Q7400805Trigger] TriggerOut")
end

return Q7400805Trigger
