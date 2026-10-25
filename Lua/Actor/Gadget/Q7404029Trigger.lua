require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7404029Trigger = class("Q7404029Trigger", GadgetActorProxy)
Q7404029Trigger.defaultAlias = "Q7404029Trigger"
local Q74040ClientConfig = require("Quest/Client/Q74040ClientConfig")

local this
local subIDs = Q74040ClientConfig.SubIDs
local npcs = Q74040ClientConfig.Npcs
local datas = Q74040ClientConfig.Datas

function Q7404029Trigger:OnPostDataPrepare()
    print("[MainId: 74040][Trigger: Q7404029Trigger] OnPostDataPrepare")
    this = self
end

function Q7404029Trigger:OnPostComponentPrepare()
    print("[MainId: 74040][Trigger: Q7404029Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7404029Trigger:TriggerIn()
    print("[MainId: 74040][Trigger: Q7404029Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7404029)
    this:DestroySelf()
end

function Q7404029Trigger:PreTriggerIn()
    print("[MainId: 74040][Trigger: Q7404029Trigger] PreTriggerIn")
end

function Q7404029Trigger:LightUpTriggerIn()
    print("[MainId: 74040][Trigger: Q7404029Trigger] LightUpTriggerIn")
end

function Q7404029Trigger:TriggerOut()
    print("[MainId: 74040][Trigger: Q7404029Trigger] TriggerOut")
end

return Q7404029Trigger
