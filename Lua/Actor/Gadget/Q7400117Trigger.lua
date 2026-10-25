require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400117Trigger = class("Q7400117Trigger", GadgetActorProxy)
Q7400117Trigger.defaultAlias = "Q7400117Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400117Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400117Trigger] OnPostDataPrepare")
    this = self
end

function Q7400117Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400117Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400117Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400117Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400117)
    this:DestroySelf()
end

function Q7400117Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400117Trigger] PreTriggerIn")
end

function Q7400117Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400117Trigger] LightUpTriggerIn")
end

function Q7400117Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400117Trigger] TriggerOut")
end

return Q7400117Trigger
