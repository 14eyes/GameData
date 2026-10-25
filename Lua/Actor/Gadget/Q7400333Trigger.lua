require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400333Trigger = class("Q7400333Trigger", GadgetActorProxy)
Q7400333Trigger.defaultAlias = "Q7400333Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400333Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400333Trigger] OnPostDataPrepare")
    this = self
end

function Q7400333Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400333Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400333Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400333Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400333)
    this:DestroySelf()
end

function Q7400333Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400333Trigger] PreTriggerIn")
end

function Q7400333Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400333Trigger] LightUpTriggerIn")
end

function Q7400333Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400333Trigger] TriggerOut")
end

return Q7400333Trigger
