require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110320Trigger = class("Q7110320Trigger", GadgetActorProxy)
Q7110320Trigger.defaultAlias = "Q7110320Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110320Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110320Trigger] OnPostDataPrepare")
    this = self
end

function Q7110320Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110320Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110320Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110320Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110320)
    this:DestroySelf()
end

function Q7110320Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110320Trigger] PreTriggerIn")
end

function Q7110320Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110320Trigger] LightUpTriggerIn")
end

function Q7110320Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110320Trigger] TriggerOut")
end

return Q7110320Trigger
