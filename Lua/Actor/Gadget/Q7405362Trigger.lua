require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405362Trigger = class("Q7405362Trigger", GadgetActorProxy)
Q7405362Trigger.defaultAlias = "Q7405362Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405362Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405362Trigger] OnPostDataPrepare")
    this = self
end

function Q7405362Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405362Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405362Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405362Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405362)
    this:DestroySelf()
end

function Q7405362Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405362Trigger] PreTriggerIn")
end

function Q7405362Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405362Trigger] LightUpTriggerIn")
end

function Q7405362Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405362Trigger] TriggerOut")
end

return Q7405362Trigger
