require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger = class("Q14009Trigger", GadgetActorProxy)
Q14009Trigger.defaultAlias = "Q14009Trigger"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger] OnPostDataPrepare")
    this = self
end

function Q14009Trigger:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1400901)
    this:DestroySelf()
end

function Q14009Trigger:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger] PreTriggerIn")
end

function Q14009Trigger:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger] LightUpTriggerIn")
end

function Q14009Trigger:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger] TriggerOut")
end

return Q14009Trigger
