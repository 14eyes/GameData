require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7404008Trigger = class("Q7404008Trigger", GadgetActorProxy)
Q7404008Trigger.defaultAlias = "Q7404008Trigger"
local Q74040ClientConfig = require("Quest/Client/Q74040ClientConfig")

local this
local subIDs = Q74040ClientConfig.SubIDs
local npcs = Q74040ClientConfig.Npcs
local datas = Q74040ClientConfig.Datas

function Q7404008Trigger:OnPostDataPrepare()
    print("[MainId: 74040][Trigger: Q7404008Trigger] OnPostDataPrepare")
    this = self
end

function Q7404008Trigger:OnPostComponentPrepare()
    print("[MainId: 74040][Trigger: Q7404008Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7404008Trigger:TriggerIn()
    print("[MainId: 74040][Trigger: Q7404008Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7404008)
    this:DestroySelf()
end

function Q7404008Trigger:PreTriggerIn()
    print("[MainId: 74040][Trigger: Q7404008Trigger] PreTriggerIn")
end

function Q7404008Trigger:LightUpTriggerIn()
    print("[MainId: 74040][Trigger: Q7404008Trigger] LightUpTriggerIn")
end

function Q7404008Trigger:TriggerOut()
    print("[MainId: 74040][Trigger: Q7404008Trigger] TriggerOut")
end

return Q7404008Trigger
