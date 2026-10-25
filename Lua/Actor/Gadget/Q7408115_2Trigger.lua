require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408115_2Trigger = class("Q7408115_2Trigger", GadgetActorProxy)
Q7408115_2Trigger.defaultAlias = "Q7408115_2Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408115_2Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408115_2Trigger] OnPostDataPrepare")
    this = self
end

function Q7408115_2Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408115_2Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15.94243, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408115_2Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408115_2Trigger] TriggerIn")
    actorMgr:GetActor("74081"):NarratorOnlyTaskByData(datas.Dialogs7408115, nil, 74081)
    this:DestroySelf()
end

function Q7408115_2Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408115_2Trigger] PreTriggerIn")
end

function Q7408115_2Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408115_2Trigger] LightUpTriggerIn")
end

function Q7408115_2Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408115_2Trigger] TriggerOut")
end

return Q7408115_2Trigger
