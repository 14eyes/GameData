require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400334Trigger = class("Q7400334Trigger", GadgetActorProxy)
Q7400334Trigger.defaultAlias = "Q7400334Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400334Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400334Trigger] OnPostDataPrepare")
    this = self
end

function Q7400334Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400334Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400334Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400334Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400334)
    this:DestroySelf()
end

function Q7400334Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400334Trigger] PreTriggerIn")
end

function Q7400334Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400334Trigger] LightUpTriggerIn")
end

function Q7400334Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400334Trigger] TriggerOut")
end

return Q7400334Trigger
