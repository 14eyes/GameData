require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400309Trigger = class("Q7400309Trigger", GadgetActorProxy)
Q7400309Trigger.defaultAlias = "Q7400309Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400309Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400309Trigger] OnPostDataPrepare")
    this = self
end

function Q7400309Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400309Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400309Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400309Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400309)
    this:DestroySelf()
end

function Q7400309Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400309Trigger] PreTriggerIn")
end

function Q7400309Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400309Trigger] LightUpTriggerIn")
end

function Q7400309Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400309Trigger] TriggerOut")
end

return Q7400309Trigger
