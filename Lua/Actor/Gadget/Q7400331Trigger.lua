require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400331Trigger = class("Q7400331Trigger", GadgetActorProxy)
Q7400331Trigger.defaultAlias = "Q7400331Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400331Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400331Trigger] OnPostDataPrepare")
    this = self
end

function Q7400331Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400331Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400331Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400331Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400331)
    this:DestroySelf()
end

function Q7400331Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400331Trigger] PreTriggerIn")
end

function Q7400331Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400331Trigger] LightUpTriggerIn")
end

function Q7400331Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400331Trigger] TriggerOut")
end

return Q7400331Trigger
