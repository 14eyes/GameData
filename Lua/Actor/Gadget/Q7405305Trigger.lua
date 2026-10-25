require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405305Trigger = class("Q7405305Trigger", GadgetActorProxy)
Q7405305Trigger.defaultAlias = "Q7405305Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405305Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405305Trigger] OnPostDataPrepare")
    this = self
end

function Q7405305Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405305Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(5, 3, true, {x = 0.0, y = 1.5, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405305Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405305Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405305)
    this:DestroySelf()
end

function Q7405305Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405305Trigger] PreTriggerIn")
end

function Q7405305Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405305Trigger] LightUpTriggerIn")
end

function Q7405305Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405305Trigger] TriggerOut")
end

return Q7405305Trigger
