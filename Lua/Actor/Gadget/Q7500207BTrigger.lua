require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500207BTrigger = class("Q7500207BTrigger", GadgetActorProxy)
Q7500207BTrigger.defaultAlias = "Q7500207BTrigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500207BTrigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500207BTrigger] OnPostDataPrepare")
    this = self
end

function Q7500207BTrigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500207BTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 50, 80, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500207BTrigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500207BTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500207)
    this:DestroySelf()
end

function Q7500207BTrigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500207BTrigger] PreTriggerIn")
end

function Q7500207BTrigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500207BTrigger] LightUpTriggerIn")
end

function Q7500207BTrigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500207BTrigger] TriggerOut")
end

return Q7500207BTrigger
