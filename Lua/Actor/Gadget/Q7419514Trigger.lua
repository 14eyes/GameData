require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7419514Trigger = class("Q7419514Trigger", GadgetActorProxy)
Q7419514Trigger.defaultAlias = "Q7419514Trigger"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs

function Q7419514Trigger:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q7419514Trigger] OnPostDataPrepare")
    this = self
end

function Q7419514Trigger:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q7419514Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(14.33562, 6.990632, 39.31585, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7419514Trigger:TriggerIn()
    print("[MainId: 74195][Trigger: Q7419514Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7419514)
    this:DestroySelf()
end

function Q7419514Trigger:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q7419514Trigger] PreTriggerIn")
end

function Q7419514Trigger:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q7419514Trigger] LightUpTriggerIn")
end

function Q7419514Trigger:TriggerOut()
    print("[MainId: 74195][Trigger: Q7419514Trigger] TriggerOut")
end

return Q7419514Trigger
