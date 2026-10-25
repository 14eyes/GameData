require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110312Trigger = class("Q7110312Trigger", GadgetActorProxy)
Q7110312Trigger.defaultAlias = "Q7110312Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110312Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110312Trigger] OnPostDataPrepare")
    this = self
end

function Q7110312Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110312Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110312Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110312Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110312)
    this:DestroySelf()
end

function Q7110312Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110312Trigger] PreTriggerIn")
end

function Q7110312Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110312Trigger] LightUpTriggerIn")
end

function Q7110312Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110312Trigger] TriggerOut")
end

return Q7110312Trigger
