require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7404002Trigger = class("Q7404002Trigger", GadgetActorProxy)
Q7404002Trigger.defaultAlias = "Q7404002Trigger"
local Q74040ClientConfig = require("Quest/Client/Q74040ClientConfig")

local this
local subIDs = Q74040ClientConfig.SubIDs
local npcs = Q74040ClientConfig.Npcs
local datas = Q74040ClientConfig.Datas

function Q7404002Trigger:OnPostDataPrepare()
    print("[MainId: 74040][Trigger: Q7404002Trigger] OnPostDataPrepare")
    this = self
end

function Q7404002Trigger:OnPostComponentPrepare()
    print("[MainId: 74040][Trigger: Q7404002Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7404002Trigger:TriggerIn()
    print("[MainId: 74040][Trigger: Q7404002Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7404002)
    this:DestroySelf()
end

function Q7404002Trigger:PreTriggerIn()
    print("[MainId: 74040][Trigger: Q7404002Trigger] PreTriggerIn")
end

function Q7404002Trigger:LightUpTriggerIn()
    print("[MainId: 74040][Trigger: Q7404002Trigger] LightUpTriggerIn")
end

function Q7404002Trigger:TriggerOut()
    print("[MainId: 74040][Trigger: Q7404002Trigger] TriggerOut")
end

return Q7404002Trigger
