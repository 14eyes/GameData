require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503007Trigger = class("Q7503007Trigger", GadgetActorProxy)
Q7503007Trigger.defaultAlias = "Q7503007Trigger"
local Q75030ClientConfig = require("Quest/Client/Q75030ClientConfig")

local this
local subIDs = Q75030ClientConfig.SubIDs
local npcs = Q75030ClientConfig.Npcs
local datas = Q75030ClientConfig.Datas

function Q7503007Trigger:OnPostDataPrepare()
    print("[MainId: 75030][Trigger: Q7503007Trigger] OnPostDataPrepare")
    this = self
end

function Q7503007Trigger:OnPostComponentPrepare()
    print("[MainId: 75030][Trigger: Q7503007Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75030)
end

function Q7503007Trigger:TriggerIn()
    print("[MainId: 75030][Trigger: Q7503007Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7503007)
    this:DestroySelf()
end

function Q7503007Trigger:PreTriggerIn()
    print("[MainId: 75030][Trigger: Q7503007Trigger] PreTriggerIn")
end

function Q7503007Trigger:LightUpTriggerIn()
    print("[MainId: 75030][Trigger: Q7503007Trigger] LightUpTriggerIn")
end

function Q7503007Trigger:TriggerOut()
    print("[MainId: 75030][Trigger: Q7503007Trigger] TriggerOut")
end

return Q7503007Trigger
