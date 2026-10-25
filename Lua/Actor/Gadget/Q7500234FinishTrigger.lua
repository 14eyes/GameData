require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500234FinishTrigger = class("Q7500234FinishTrigger", GadgetActorProxy)
Q7500234FinishTrigger.defaultAlias = "Q7500234FinishTrigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500234FinishTrigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500234FinishTrigger] OnPostDataPrepare")
    this = self
end

function Q7500234FinishTrigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500234FinishTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500234FinishTrigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500234FinishTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500234)
    this:DestroySelf()
end

function Q7500234FinishTrigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500234FinishTrigger] PreTriggerIn")
end

function Q7500234FinishTrigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500234FinishTrigger] LightUpTriggerIn")
end

function Q7500234FinishTrigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500234FinishTrigger] TriggerOut")
end

return Q7500234FinishTrigger
