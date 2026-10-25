require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400135Trigger = class("Q7400135Trigger", GadgetActorProxy)
Q7400135Trigger.defaultAlias = "Q7400135Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400135Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400135Trigger] OnPostDataPrepare")
    this = self
end

function Q7400135Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400135Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400135Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400135Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400135)
    this:DestroySelf()
end

function Q7400135Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400135Trigger] PreTriggerIn")
end

function Q7400135Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400135Trigger] LightUpTriggerIn")
end

function Q7400135Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400135Trigger] TriggerOut")
end

return Q7400135Trigger
