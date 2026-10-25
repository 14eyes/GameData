require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500401Trigger = class("Q7500401Trigger", GadgetActorProxy)
Q7500401Trigger.defaultAlias = "Q7500401Trigger"
local Q75004ClientConfig = require("Quest/Client/Q75004ClientConfig")

local this
local subIDs = Q75004ClientConfig.SubIDs
local npcs = Q75004ClientConfig.Npcs

function Q7500401Trigger:OnPostDataPrepare()
    print("[MainId: 75004][Trigger: Q7500401Trigger] OnPostDataPrepare")
    this = self
end

function Q7500401Trigger:OnPostComponentPrepare()
    print("[MainId: 75004][Trigger: Q7500401Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 50.29236, 40, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75004)
end

function Q7500401Trigger:TriggerIn()
    print("[MainId: 75004][Trigger: Q7500401Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500401)
    this:DestroySelf()
end

function Q7500401Trigger:PreTriggerIn()
    print("[MainId: 75004][Trigger: Q7500401Trigger] PreTriggerIn")
end

function Q7500401Trigger:LightUpTriggerIn()
    print("[MainId: 75004][Trigger: Q7500401Trigger] LightUpTriggerIn")
end

function Q7500401Trigger:TriggerOut()
    print("[MainId: 75004][Trigger: Q7500401Trigger] TriggerOut")
end

return Q7500401Trigger
