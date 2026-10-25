require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506407Trigger = class("Q7506407Trigger", GadgetActorProxy)
Q7506407Trigger.defaultAlias = "Q7506407Trigger"
local Q75064ClientConfig = require("Quest/Client/Q75064ClientConfig")

local this
local subIDs = Q75064ClientConfig.SubIDs
local npcs = Q75064ClientConfig.Npcs
local datas = Q75064ClientConfig.Datas

function Q7506407Trigger:OnPostDataPrepare()
    print("[MainId: 75064][Trigger: Q7506407Trigger] OnPostDataPrepare")
    this = self
end

function Q7506407Trigger:OnPostComponentPrepare()
    print("[MainId: 75064][Trigger: Q7506407Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75064)
end

function Q7506407Trigger:TriggerIn()
    print("[MainId: 75064][Trigger: Q7506407Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7507407)
    this:DestroySelf()
end

function Q7506407Trigger:PreTriggerIn()
    print("[MainId: 75064][Trigger: Q7506407Trigger] PreTriggerIn")
end

function Q7506407Trigger:LightUpTriggerIn()
    print("[MainId: 75064][Trigger: Q7506407Trigger] LightUpTriggerIn")
end

function Q7506407Trigger:TriggerOut()
    print("[MainId: 75064][Trigger: Q7506407Trigger] TriggerOut")
end

return Q7506407Trigger
