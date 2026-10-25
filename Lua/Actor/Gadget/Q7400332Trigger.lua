require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400332Trigger = class("Q7400332Trigger", GadgetActorProxy)
Q7400332Trigger.defaultAlias = "Q7400332Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400332Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400332Trigger] OnPostDataPrepare")
    this = self
end

function Q7400332Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400332Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400332Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400332Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400332)
    this:DestroySelf()
end

function Q7400332Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400332Trigger] PreTriggerIn")
end

function Q7400332Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400332Trigger] LightUpTriggerIn")
end

function Q7400332Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400332Trigger] TriggerOut")
end

return Q7400332Trigger
