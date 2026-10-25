require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502015Trigger = class("Q7502015Trigger", GadgetActorProxy)
Q7502015Trigger.defaultAlias = "Q7502015Trigger"
local Q75020ClientConfig = require("Quest/Client/Q75020ClientConfig")

local this
local subIDs = Q75020ClientConfig.SubIDs
local npcs = Q75020ClientConfig.Npcs
local points = Q75020ClientConfig.Points
local datas = Q75020ClientConfig.Datas

function Q7502015Trigger:OnPostDataPrepare()
    print("[MainId: 75020][Trigger: Q7502015Trigger] OnPostDataPrepare")
    this = self
end

function Q7502015Trigger:OnPostComponentPrepare()
    print("[MainId: 75020][Trigger: Q7502015Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(15, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75020)
end

function Q7502015Trigger:TriggerIn()
    print("[MainId: 75020][Trigger: Q7502015Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7502015)
    this:DestroySelf()
end

function Q7502015Trigger:PreTriggerIn()
    print("[MainId: 75020][Trigger: Q7502015Trigger] PreTriggerIn")
end

function Q7502015Trigger:LightUpTriggerIn()
    print("[MainId: 75020][Trigger: Q7502015Trigger] LightUpTriggerIn")
end

function Q7502015Trigger:TriggerOut()
    print("[MainId: 75020][Trigger: Q7502015Trigger] TriggerOut")
end

return Q7502015Trigger
