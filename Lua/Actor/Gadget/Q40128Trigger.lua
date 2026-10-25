require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40128Trigger = class("Q40128Trigger", GadgetActorProxy)
Q40128Trigger.defaultAlias = "Q40128Trigger"
local Q40128ClientConfig = require("Quest/Client/Q40128ClientConfig")

local this
local subIDs = Q40128ClientConfig.SubIDs
local npcs = Q40128ClientConfig.Npcs

function Q40128Trigger:OnPostDataPrepare()
    print("[MainId: 40128][Trigger: Q40128Trigger] OnPostDataPrepare")
    this = self
end

function Q40128Trigger:OnPostComponentPrepare()
    print("[MainId: 40128][Trigger: Q40128Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40128Trigger:TriggerIn()
    print("[MainId: 40128][Trigger: Q40128Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4012803)
    this:DestroySelf()
end

function Q40128Trigger:PreTriggerIn()
    print("[MainId: 40128][Trigger: Q40128Trigger] PreTriggerIn")
end

function Q40128Trigger:LightUpTriggerIn()
    print("[MainId: 40128][Trigger: Q40128Trigger] LightUpTriggerIn")
end

function Q40128Trigger:TriggerOut()
    print("[MainId: 40128][Trigger: Q40128Trigger] TriggerOut")
end

return Q40128Trigger
