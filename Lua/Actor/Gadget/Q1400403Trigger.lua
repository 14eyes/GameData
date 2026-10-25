require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400403Trigger = class("Q1400403Trigger", GadgetActorProxy)
Q1400403Trigger.defaultAlias = "Q1400403Trigger"
local Q14004ClientConfig = require("Quest/Client/Q14004ClientConfig")

local this
local subIDs = Q14004ClientConfig.SubIDs
local npcs = Q14004ClientConfig.Npcs
local datas = Q14004ClientConfig.Datas

function Q1400403Trigger:OnPostDataPrepare()
    print("[MainId: 14004][Trigger: Q1400403Trigger] OnPostDataPrepare")
    this = self
end

function Q1400403Trigger:OnPostComponentPrepare()
    print("[MainId: 14004][Trigger: Q1400403Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(13.70676, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400403Trigger:TriggerIn()
    print("[MainId: 14004][Trigger: Q1400403Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1400403)
    this:DestroySelf()
end

function Q1400403Trigger:PreTriggerIn()
    print("[MainId: 14004][Trigger: Q1400403Trigger] PreTriggerIn")
end

function Q1400403Trigger:LightUpTriggerIn()
    print("[MainId: 14004][Trigger: Q1400403Trigger] LightUpTriggerIn")
end

function Q1400403Trigger:TriggerOut()
    print("[MainId: 14004][Trigger: Q1400403Trigger] TriggerOut")
end

return Q1400403Trigger
