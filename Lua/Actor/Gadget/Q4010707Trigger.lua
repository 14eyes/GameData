require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010707Trigger = class("Q4010707Trigger", GadgetActorProxy)
Q4010707Trigger.defaultAlias = "Q4010707Trigger"
local Q40107ClientConfig = require("Quest/Client/Q40107ClientConfig")

local this
local subIDs = Q40107ClientConfig.SubIDs
local npcs = Q40107ClientConfig.Npcs
local points = Q40107ClientConfig.Points
local datas = Q40107ClientConfig.Datas

function Q4010707Trigger:OnPostDataPrepare()
    print("[MainId: 40107][Trigger: Q4010707Trigger] OnPostDataPrepare")
    this = self
end

function Q4010707Trigger:OnPostComponentPrepare()
    print("[MainId: 40107][Trigger: Q4010707Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(34, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010707Trigger:TriggerIn()
    print("[MainId: 40107][Trigger: Q4010707Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4010707)
    this:DestroySelf()
end

function Q4010707Trigger:PreTriggerIn()
    print("[MainId: 40107][Trigger: Q4010707Trigger] PreTriggerIn")
end

function Q4010707Trigger:LightUpTriggerIn()
    print("[MainId: 40107][Trigger: Q4010707Trigger] LightUpTriggerIn")
end

function Q4010707Trigger:TriggerOut()
    print("[MainId: 40107][Trigger: Q4010707Trigger] TriggerOut")
end

return Q4010707Trigger
