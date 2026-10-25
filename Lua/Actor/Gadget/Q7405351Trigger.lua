require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405351Trigger = class("Q7405351Trigger", GadgetActorProxy)
Q7405351Trigger.defaultAlias = "Q7405351Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405351Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405351Trigger] OnPostDataPrepare")
    this = self
end

function Q7405351Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405351Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405351Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405351Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405351)
    this:DestroySelf()
end

function Q7405351Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405351Trigger] PreTriggerIn")
end

function Q7405351Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405351Trigger] LightUpTriggerIn")
end

function Q7405351Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405351Trigger] TriggerOut")
end

return Q7405351Trigger
