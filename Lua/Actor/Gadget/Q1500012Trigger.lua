require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500012Trigger = class("Q1500012Trigger", GadgetActorProxy)
Q1500012Trigger.defaultAlias = "Q1500012Trigger"
local Q15000ClientConfig = require("Quest/Client/Q15000ClientConfig")

local this
local subIDs = Q15000ClientConfig.SubIDs
local npcs = Q15000ClientConfig.Npcs
local points = Q15000ClientConfig.Points
local datas = Q15000ClientConfig.Datas

function Q1500012Trigger:OnPostDataPrepare()
    print("[MainId: 15000][Trigger: Q1500012Trigger] OnPostDataPrepare")
    this = self
end

function Q1500012Trigger:OnPostComponentPrepare()
    print("[MainId: 15000][Trigger: Q1500012Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15000)
end

function Q1500012Trigger:TriggerIn()
    print("[MainId: 15000][Trigger: Q1500012Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1500012)
    this:DestroySelf()
end

function Q1500012Trigger:PreTriggerIn()
    print("[MainId: 15000][Trigger: Q1500012Trigger] PreTriggerIn")
end

function Q1500012Trigger:LightUpTriggerIn()
    print("[MainId: 15000][Trigger: Q1500012Trigger] LightUpTriggerIn")
end

function Q1500012Trigger:TriggerOut()
    print("[MainId: 15000][Trigger: Q1500012Trigger] TriggerOut")
end

return Q1500012Trigger
