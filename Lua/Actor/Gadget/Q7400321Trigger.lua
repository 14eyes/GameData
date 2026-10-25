require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400321Trigger = class("Q7400321Trigger", GadgetActorProxy)
Q7400321Trigger.defaultAlias = "Q7400321Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400321Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400321Trigger] OnPostDataPrepare")
    this = self
end

function Q7400321Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400321Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400321Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400321Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400321)
    this:DestroySelf()
end

function Q7400321Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400321Trigger] PreTriggerIn")
end

function Q7400321Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400321Trigger] LightUpTriggerIn")
end

function Q7400321Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400321Trigger] TriggerOut")
end

return Q7400321Trigger
