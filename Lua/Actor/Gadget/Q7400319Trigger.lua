require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400319Trigger = class("Q7400319Trigger", GadgetActorProxy)
Q7400319Trigger.defaultAlias = "Q7400319Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400319Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400319Trigger] OnPostDataPrepare")
    this = self
end

function Q7400319Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400319Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400319Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400319Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400319)
    this:DestroySelf()
end

function Q7400319Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400319Trigger] PreTriggerIn")
end

function Q7400319Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400319Trigger] LightUpTriggerIn")
end

function Q7400319Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400319Trigger] TriggerOut")
end

return Q7400319Trigger
