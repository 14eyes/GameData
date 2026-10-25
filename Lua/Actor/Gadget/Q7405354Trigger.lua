require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405354Trigger = class("Q7405354Trigger", GadgetActorProxy)
Q7405354Trigger.defaultAlias = "Q7405354Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405354Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405354Trigger] OnPostDataPrepare")
    this = self
end

function Q7405354Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405354Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 8, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405354Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405354Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405354)
    this:DestroySelf()
end

function Q7405354Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405354Trigger] PreTriggerIn")
end

function Q7405354Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405354Trigger] LightUpTriggerIn")
end

function Q7405354Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405354Trigger] TriggerOut")
end

return Q7405354Trigger
