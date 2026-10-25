require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400330Trigger = class("Q7400330Trigger", GadgetActorProxy)
Q7400330Trigger.defaultAlias = "Q7400330Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400330Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400330Trigger] OnPostDataPrepare")
    this = self
end

function Q7400330Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400330Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400330Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400330Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400330)
    this:DestroySelf()
end

function Q7400330Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400330Trigger] PreTriggerIn")
end

function Q7400330Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400330Trigger] LightUpTriggerIn")
end

function Q7400330Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400330Trigger] TriggerOut")
end

return Q7400330Trigger
