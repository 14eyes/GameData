require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500234FailTrigger = class("Q7500234FailTrigger", GadgetActorProxy)
Q7500234FailTrigger.defaultAlias = "Q7500234FailTrigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500234FailTrigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500234FailTrigger] OnPostDataPrepare")
    this = self
end

function Q7500234FailTrigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500234FailTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(250, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500234FailTrigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500234FailTrigger] TriggerIn")
end

function Q7500234FailTrigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500234FailTrigger] PreTriggerIn")
end

function Q7500234FailTrigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500234FailTrigger] LightUpTriggerIn")
end

function Q7500234FailTrigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500234FailTrigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7500234)
    this:DestroySelf()
end

return Q7500234FailTrigger
