require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502001Trigger = class("Q7502001Trigger", GadgetActorProxy)
Q7502001Trigger.defaultAlias = "Q7502001Trigger"
local Q75020ClientConfig = require("Quest/Client/Q75020ClientConfig")

local this
local subIDs = Q75020ClientConfig.SubIDs
local npcs = Q75020ClientConfig.Npcs
local points = Q75020ClientConfig.Points
local datas = Q75020ClientConfig.Datas

function Q7502001Trigger:OnPostDataPrepare()
    print("[MainId: 75020][Trigger: Q7502001Trigger] OnPostDataPrepare")
    this = self
end

function Q7502001Trigger:OnPostComponentPrepare()
    print("[MainId: 75020][Trigger: Q7502001Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75020)
end

function Q7502001Trigger:TriggerIn()
    print("[MainId: 75020][Trigger: Q7502001Trigger] TriggerIn")
    actorMgr:GetActor("75020"):RequestInteraction(npcs.Npc6132Data.alias, "", true)
    this:DestroySelf()
end

function Q7502001Trigger:PreTriggerIn()
    print("[MainId: 75020][Trigger: Q7502001Trigger] PreTriggerIn")
end

function Q7502001Trigger:LightUpTriggerIn()
    print("[MainId: 75020][Trigger: Q7502001Trigger] LightUpTriggerIn")
end

function Q7502001Trigger:TriggerOut()
    print("[MainId: 75020][Trigger: Q7502001Trigger] TriggerOut")
end

return Q7502001Trigger
