require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500504Trigger = class("Q7500504Trigger", GadgetActorProxy)
Q7500504Trigger.defaultAlias = "Q7500504Trigger"
local Q75005ClientConfig = require("Quest/Client/Q75005ClientConfig")

local this
local subIDs = Q75005ClientConfig.SubIDs
local npcs = Q75005ClientConfig.Npcs
local points = Q75005ClientConfig.Points
local datas = Q75005ClientConfig.Datas

function Q7500504Trigger:OnPostDataPrepare()
    print("[MainId: 75005][Trigger: Q7500504Trigger] OnPostDataPrepare")
    this = self
end

function Q7500504Trigger:OnPostComponentPrepare()
    print("[MainId: 75005][Trigger: Q7500504Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75005)
end

function Q7500504Trigger:TriggerIn()
    print("[MainId: 75005][Trigger: Q7500504Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500504)
    this:DestroySelf()
end

function Q7500504Trigger:PreTriggerIn()
    print("[MainId: 75005][Trigger: Q7500504Trigger] PreTriggerIn")
end

function Q7500504Trigger:LightUpTriggerIn()
    print("[MainId: 75005][Trigger: Q7500504Trigger] LightUpTriggerIn")
end

function Q7500504Trigger:TriggerOut()
    print("[MainId: 75005][Trigger: Q7500504Trigger] TriggerOut")
end

return Q7500504Trigger
