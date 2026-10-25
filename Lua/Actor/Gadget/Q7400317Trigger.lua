require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400317Trigger = class("Q7400317Trigger", GadgetActorProxy)
Q7400317Trigger.defaultAlias = "Q7400317Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400317Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400317Trigger] OnPostDataPrepare")
    this = self
end

function Q7400317Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400317Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400317Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400317Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400317)
    this:DestroySelf()
end

function Q7400317Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400317Trigger] PreTriggerIn")
end

function Q7400317Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400317Trigger] LightUpTriggerIn")
end

function Q7400317Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400317Trigger] TriggerOut")
end

return Q7400317Trigger
