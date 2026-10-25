require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400146Trigger = class("Q7400146Trigger", GadgetActorProxy)
Q7400146Trigger.defaultAlias = "Q7400146Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400146Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400146Trigger] OnPostDataPrepare")
    this = self
end

function Q7400146Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400146Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400146Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400146Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400146)
    this:DestroySelf()
end

function Q7400146Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400146Trigger] PreTriggerIn")
end

function Q7400146Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400146Trigger] LightUpTriggerIn")
end

function Q7400146Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400146Trigger] TriggerOut")
end

return Q7400146Trigger
