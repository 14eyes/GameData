require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400337Trigger = class("Q7400337Trigger", GadgetActorProxy)
Q7400337Trigger.defaultAlias = "Q7400337Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400337Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400337Trigger] OnPostDataPrepare")
    this = self
end

function Q7400337Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400337Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400337Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400337Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400337)
    this:DestroySelf()
end

function Q7400337Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400337Trigger] PreTriggerIn")
end

function Q7400337Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400337Trigger] LightUpTriggerIn")
end

function Q7400337Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400337Trigger] TriggerOut")
end

return Q7400337Trigger
