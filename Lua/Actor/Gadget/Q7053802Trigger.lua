require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7053802Trigger = class("Q7053802Trigger", GadgetActorProxy)
Q7053802Trigger.defaultAlias = "Q7053802Trigger"
local Q70538ClientConfig = require("Quest/Client/Q70538ClientConfig")

local this
local subIDs = Q70538ClientConfig.SubIDs
local npcs = Q70538ClientConfig.Npcs
local datas = Q70538ClientConfig.Datas

function Q7053802Trigger:OnPostDataPrepare()
    print("[MainId: 70538][Trigger: Q7053802Trigger] OnPostDataPrepare")
    this = self
end

function Q7053802Trigger:OnPostComponentPrepare()
    print("[MainId: 70538][Trigger: Q7053802Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7053802Trigger:TriggerIn()
    print("[MainId: 70538][Trigger: Q7053802Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7053802)
    this:DestroySelf()
end

function Q7053802Trigger:PreTriggerIn()
    print("[MainId: 70538][Trigger: Q7053802Trigger] PreTriggerIn")
end

function Q7053802Trigger:LightUpTriggerIn()
    print("[MainId: 70538][Trigger: Q7053802Trigger] LightUpTriggerIn")
end

function Q7053802Trigger:TriggerOut()
    print("[MainId: 70538][Trigger: Q7053802Trigger] TriggerOut")
end

return Q7053802Trigger
