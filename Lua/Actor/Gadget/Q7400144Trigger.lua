require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400144Trigger = class("Q7400144Trigger", GadgetActorProxy)
Q7400144Trigger.defaultAlias = "Q7400144Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400144Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400144Trigger] OnPostDataPrepare")
    this = self
end

function Q7400144Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400144Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400144Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400144Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400144)
    this:DestroySelf()
end

function Q7400144Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400144Trigger] PreTriggerIn")
end

function Q7400144Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400144Trigger] LightUpTriggerIn")
end

function Q7400144Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400144Trigger] TriggerOut")
end

return Q7400144Trigger
