require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500511Trigger = class("Q7500511Trigger", GadgetActorProxy)
Q7500511Trigger.defaultAlias = "Q7500511Trigger"
local Q75005ClientConfig = require("Quest/Client/Q75005ClientConfig")

local this
local subIDs = Q75005ClientConfig.SubIDs
local npcs = Q75005ClientConfig.Npcs
local datas = Q75005ClientConfig.Datas

function Q7500511Trigger:OnPostDataPrepare()
    print("[MainId: 75005][Trigger: Q7500511Trigger] OnPostDataPrepare")
    this = self
end

function Q7500511Trigger:OnPostComponentPrepare()
    print("[MainId: 75005][Trigger: Q7500511Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75005)
end

function Q7500511Trigger:TriggerIn()
    print("[MainId: 75005][Trigger: Q7500511Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500511)
    this:DestroySelf()
end

function Q7500511Trigger:PreTriggerIn()
    print("[MainId: 75005][Trigger: Q7500511Trigger] PreTriggerIn")
end

function Q7500511Trigger:LightUpTriggerIn()
    print("[MainId: 75005][Trigger: Q7500511Trigger] LightUpTriggerIn")
end

function Q7500511Trigger:TriggerOut()
    print("[MainId: 75005][Trigger: Q7500511Trigger] TriggerOut")
end

return Q7500511Trigger
