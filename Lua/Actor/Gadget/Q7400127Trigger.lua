require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400127Trigger = class("Q7400127Trigger", GadgetActorProxy)
Q7400127Trigger.defaultAlias = "Q7400127Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400127Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400127Trigger] OnPostDataPrepare")
    this = self
end

function Q7400127Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400127Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400127Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400127Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400127)
    this:DestroySelf()
end

function Q7400127Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400127Trigger] PreTriggerIn")
end

function Q7400127Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400127Trigger] LightUpTriggerIn")
end

function Q7400127Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400127Trigger] TriggerOut")
end

return Q7400127Trigger
