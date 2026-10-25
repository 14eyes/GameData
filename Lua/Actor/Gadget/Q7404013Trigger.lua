require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7404013Trigger = class("Q7404013Trigger", GadgetActorProxy)
Q7404013Trigger.defaultAlias = "Q7404013Trigger"
local Q74040ClientConfig = require("Quest/Client/Q74040ClientConfig")

local this
local subIDs = Q74040ClientConfig.SubIDs
local npcs = Q74040ClientConfig.Npcs
local datas = Q74040ClientConfig.Datas

function Q7404013Trigger:OnPostDataPrepare()
    print("[MainId: 74040][Trigger: Q7404013Trigger] OnPostDataPrepare")
    this = self
end

function Q7404013Trigger:OnPostComponentPrepare()
    print("[MainId: 74040][Trigger: Q7404013Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7404013Trigger:TriggerIn()
    print("[MainId: 74040][Trigger: Q7404013Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7404013)
    this:DestroySelf()
end

function Q7404013Trigger:PreTriggerIn()
    print("[MainId: 74040][Trigger: Q7404013Trigger] PreTriggerIn")
end

function Q7404013Trigger:LightUpTriggerIn()
    print("[MainId: 74040][Trigger: Q7404013Trigger] LightUpTriggerIn")
end

function Q7404013Trigger:TriggerOut()
    print("[MainId: 74040][Trigger: Q7404013Trigger] TriggerOut")
end

return Q7404013Trigger
