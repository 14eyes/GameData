require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400139Trigger = class("Q7400139Trigger", GadgetActorProxy)
Q7400139Trigger.defaultAlias = "Q7400139Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400139Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400139Trigger] OnPostDataPrepare")
    this = self
end

function Q7400139Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400139Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400139Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400139Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400139)
    this:DestroySelf()
end

function Q7400139Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400139Trigger] PreTriggerIn")
end

function Q7400139Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400139Trigger] LightUpTriggerIn")
end

function Q7400139Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400139Trigger] TriggerOut")
end

return Q7400139Trigger
