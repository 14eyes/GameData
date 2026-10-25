require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400107Trigger = class("Q7400107Trigger", GadgetActorProxy)
Q7400107Trigger.defaultAlias = "Q7400107Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400107Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400107Trigger] OnPostDataPrepare")
    this = self
end

function Q7400107Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400107Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400107Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400107Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400107)
    this:DestroySelf()
end

function Q7400107Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400107Trigger] PreTriggerIn")
end

function Q7400107Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400107Trigger] LightUpTriggerIn")
end

function Q7400107Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400107Trigger] TriggerOut")
end

return Q7400107Trigger
