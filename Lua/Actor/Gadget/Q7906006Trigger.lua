require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7906006Trigger = class("Q7906006Trigger", GadgetActorProxy)
Q7906006Trigger.defaultAlias = "Q7906006Trigger"
local Q79060ClientConfig = require("Quest/Client/Q79060ClientConfig")

local this
local subIDs = Q79060ClientConfig.SubIDs
local npcs = Q79060ClientConfig.Npcs
local datas = Q79060ClientConfig.Datas

function Q7906006Trigger:OnPostDataPrepare()
    print("[MainId: 79060][Trigger: Q7906006Trigger] OnPostDataPrepare")
    this = self
end

function Q7906006Trigger:OnPostComponentPrepare()
    print("[MainId: 79060][Trigger: Q7906006Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79060)
end

function Q7906006Trigger:TriggerIn()
    print("[MainId: 79060][Trigger: Q7906006Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7906006)
    this:DestroySelf()
end

function Q7906006Trigger:PreTriggerIn()
    print("[MainId: 79060][Trigger: Q7906006Trigger] PreTriggerIn")
end

function Q7906006Trigger:LightUpTriggerIn()
    print("[MainId: 79060][Trigger: Q7906006Trigger] LightUpTriggerIn")
end

function Q7906006Trigger:TriggerOut()
    print("[MainId: 79060][Trigger: Q7906006Trigger] TriggerOut")
end

return Q7906006Trigger
