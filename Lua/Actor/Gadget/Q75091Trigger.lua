require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75091Trigger = class("Q75091Trigger", GadgetActorProxy)
Q75091Trigger.defaultAlias = "Q75091Trigger"
local Q75091ClientConfig = require("Quest/Client/Q75091ClientConfig")

local this
local subIDs = Q75091ClientConfig.SubIDs
local npcs = Q75091ClientConfig.Npcs
local datas = Q75091ClientConfig.Datas

function Q75091Trigger:OnPostDataPrepare()
    print("[MainId: 75091][Trigger: Q75091Trigger] OnPostDataPrepare")
    this = self
end

function Q75091Trigger:OnPostComponentPrepare()
    print("[MainId: 75091][Trigger: Q75091Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75091)
end

function Q75091Trigger:TriggerIn()
    print("[MainId: 75091][Trigger: Q75091Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7509107)
    this:DestroySelf()
end

function Q75091Trigger:PreTriggerIn()
    print("[MainId: 75091][Trigger: Q75091Trigger] PreTriggerIn")
end

function Q75091Trigger:LightUpTriggerIn()
    print("[MainId: 75091][Trigger: Q75091Trigger] LightUpTriggerIn")
end

function Q75091Trigger:TriggerOut()
    print("[MainId: 75091][Trigger: Q75091Trigger] TriggerOut")
end

return Q75091Trigger
