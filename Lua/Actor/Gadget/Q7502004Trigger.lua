require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502004Trigger = class("Q7502004Trigger", GadgetActorProxy)
Q7502004Trigger.defaultAlias = "Q7502004Trigger"
local Q75020ClientConfig = require("Quest/Client/Q75020ClientConfig")

local this
local subIDs = Q75020ClientConfig.SubIDs
local npcs = Q75020ClientConfig.Npcs
local points = Q75020ClientConfig.Points
local datas = Q75020ClientConfig.Datas

function Q7502004Trigger:OnPostDataPrepare()
    print("[MainId: 75020][Trigger: Q7502004Trigger] OnPostDataPrepare")
    this = self
end

function Q7502004Trigger:OnPostComponentPrepare()
    print("[MainId: 75020][Trigger: Q7502004Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(13, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75020)
end

function Q7502004Trigger:TriggerIn()
    print("[MainId: 75020][Trigger: Q7502004Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7502004)
    this:DestroySelf()
end

function Q7502004Trigger:PreTriggerIn()
    print("[MainId: 75020][Trigger: Q7502004Trigger] PreTriggerIn")
end

function Q7502004Trigger:LightUpTriggerIn()
    print("[MainId: 75020][Trigger: Q7502004Trigger] LightUpTriggerIn")
end

function Q7502004Trigger:TriggerOut()
    print("[MainId: 75020][Trigger: Q7502004Trigger] TriggerOut")
end

return Q7502004Trigger
