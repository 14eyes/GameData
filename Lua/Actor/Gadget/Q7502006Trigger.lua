require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502006Trigger = class("Q7502006Trigger", GadgetActorProxy)
Q7502006Trigger.defaultAlias = "Q7502006Trigger"
local Q75020ClientConfig = require("Quest/Client/Q75020ClientConfig")

local this
local subIDs = Q75020ClientConfig.SubIDs
local npcs = Q75020ClientConfig.Npcs
local points = Q75020ClientConfig.Points
local datas = Q75020ClientConfig.Datas

function Q7502006Trigger:OnPostDataPrepare()
    print("[MainId: 75020][Trigger: Q7502006Trigger] OnPostDataPrepare")
    this = self
end

function Q7502006Trigger:OnPostComponentPrepare()
    print("[MainId: 75020][Trigger: Q7502006Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75020)
end

function Q7502006Trigger:TriggerIn()
    print("[MainId: 75020][Trigger: Q7502006Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7502006)
    this:DestroySelf()
end

function Q7502006Trigger:PreTriggerIn()
    print("[MainId: 75020][Trigger: Q7502006Trigger] PreTriggerIn")
end

function Q7502006Trigger:LightUpTriggerIn()
    print("[MainId: 75020][Trigger: Q7502006Trigger] LightUpTriggerIn")
end

function Q7502006Trigger:TriggerOut()
    print("[MainId: 75020][Trigger: Q7502006Trigger] TriggerOut")
end

return Q7502006Trigger
