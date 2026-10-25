require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400336Trigger = class("Q7400336Trigger", GadgetActorProxy)
Q7400336Trigger.defaultAlias = "Q7400336Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400336Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400336Trigger] OnPostDataPrepare")
    this = self
end

function Q7400336Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400336Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400336Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400336Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400336)
    this:DestroySelf()
end

function Q7400336Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400336Trigger] PreTriggerIn")
end

function Q7400336Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400336Trigger] LightUpTriggerIn")
end

function Q7400336Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400336Trigger] TriggerOut")
end

return Q7400336Trigger
