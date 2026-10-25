require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7416404Trigger = class("Q7416404Trigger", GadgetActorProxy)
Q7416404Trigger.defaultAlias = "Q7416404Trigger"
local Q74164ClientConfig = require("Quest/Client/Q74164ClientConfig")

local this
local subIDs = Q74164ClientConfig.SubIDs
local npcs = Q74164ClientConfig.Npcs
local datas = Q74164ClientConfig.Datas

function Q7416404Trigger:OnPostDataPrepare()
    print("[MainId: 74164][Trigger: Q7416404Trigger] OnPostDataPrepare")
    this = self
end

function Q7416404Trigger:OnPostComponentPrepare()
    print("[MainId: 74164][Trigger: Q7416404Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7416404Trigger:TriggerIn()
    print("[MainId: 74164][Trigger: Q7416404Trigger] TriggerIn")
    actorMgr:GetActor("74164"):NarratorOnlyTaskByData(datas.Narrator_7416408)
    this:DestroySelf()
end

function Q7416404Trigger:PreTriggerIn()
    print("[MainId: 74164][Trigger: Q7416404Trigger] PreTriggerIn")
end

function Q7416404Trigger:LightUpTriggerIn()
    print("[MainId: 74164][Trigger: Q7416404Trigger] LightUpTriggerIn")
end

function Q7416404Trigger:TriggerOut()
    print("[MainId: 74164][Trigger: Q7416404Trigger] TriggerOut")
end

return Q7416404Trigger
