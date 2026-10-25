require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502011Trigger = class("Q7502011Trigger", GadgetActorProxy)
Q7502011Trigger.defaultAlias = "Q7502011Trigger"
local Q75020ClientConfig = require("Quest/Client/Q75020ClientConfig")

local this
local subIDs = Q75020ClientConfig.SubIDs
local npcs = Q75020ClientConfig.Npcs
local points = Q75020ClientConfig.Points
local datas = Q75020ClientConfig.Datas

function Q7502011Trigger:OnPostDataPrepare()
    print("[MainId: 75020][Trigger: Q7502011Trigger] OnPostDataPrepare")
    this = self
end

function Q7502011Trigger:OnPostComponentPrepare()
    print("[MainId: 75020][Trigger: Q7502011Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(15, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75020)
end

function Q7502011Trigger:TriggerIn()
    print("[MainId: 75020][Trigger: Q7502011Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7502011)
    this:DestroySelf()
end

function Q7502011Trigger:PreTriggerIn()
    print("[MainId: 75020][Trigger: Q7502011Trigger] PreTriggerIn")
end

function Q7502011Trigger:LightUpTriggerIn()
    print("[MainId: 75020][Trigger: Q7502011Trigger] LightUpTriggerIn")
end

function Q7502011Trigger:TriggerOut()
    print("[MainId: 75020][Trigger: Q7502011Trigger] TriggerOut")
end

return Q7502011Trigger
