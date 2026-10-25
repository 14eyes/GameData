require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400003Trigger = class("Q1400003Trigger", GadgetActorProxy)
Q1400003Trigger.defaultAlias = "Q1400003Trigger"
local Q14000ClientConfig = require("Quest/Client/Q14000ClientConfig")

local this
local subIDs = Q14000ClientConfig.SubIDs
local npcs = Q14000ClientConfig.Npcs
local points = Q14000ClientConfig.Points
local datas = Q14000ClientConfig.Datas

function Q1400003Trigger:OnPostDataPrepare()
    print("[MainId: 14000][Trigger: Q1400003Trigger] OnPostDataPrepare")
    this = self
end

function Q1400003Trigger:OnPostComponentPrepare()
    print("[MainId: 14000][Trigger: Q1400003Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400003Trigger:TriggerIn()
    print("[MainId: 14000][Trigger: Q1400003Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1400003)
    this:DestroySelf()
end

function Q1400003Trigger:PreTriggerIn()
    print("[MainId: 14000][Trigger: Q1400003Trigger] PreTriggerIn")
end

function Q1400003Trigger:LightUpTriggerIn()
    print("[MainId: 14000][Trigger: Q1400003Trigger] LightUpTriggerIn")
end

function Q1400003Trigger:TriggerOut()
    print("[MainId: 14000][Trigger: Q1400003Trigger] TriggerOut")
end

return Q1400003Trigger
