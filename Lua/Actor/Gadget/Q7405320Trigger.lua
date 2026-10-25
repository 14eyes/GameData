require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405320Trigger = class("Q7405320Trigger", GadgetActorProxy)
Q7405320Trigger.defaultAlias = "Q7405320Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405320Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405320Trigger] OnPostDataPrepare")
    this = self
end

function Q7405320Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405320Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405320Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405320Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74053")
    actor:ClearNarratorTask()
    actor:NarratorOnlyTaskByData(datas.Narrator_7405303)
    this:DestroySelf()
end

function Q7405320Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405320Trigger] PreTriggerIn")
end

function Q7405320Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405320Trigger] LightUpTriggerIn")
end

function Q7405320Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405320Trigger] TriggerOut")
end

return Q7405320Trigger
