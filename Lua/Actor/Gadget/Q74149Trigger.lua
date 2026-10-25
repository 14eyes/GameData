require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74149Trigger = class("Q74149Trigger", GadgetActorProxy)
Q74149Trigger.defaultAlias = "Q74149Trigger"
local Q74149ClientConfig = require("Quest/Client/Q74149ClientConfig")

local this
local subIDs = Q74149ClientConfig.SubIDs
local npcs = Q74149ClientConfig.Npcs
local datas = Q74149ClientConfig.Datas

function Q74149Trigger:OnPostDataPrepare()
    print("[MainId: 74149][Trigger: Q74149Trigger] OnPostDataPrepare")
    this = self
end

function Q74149Trigger:OnPostComponentPrepare()
    print("[MainId: 74149][Trigger: Q74149Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74149Trigger:TriggerIn()
    print("[MainId: 74149][Trigger: Q74149Trigger] TriggerIn")
    actorMgr:GetActor("74149"):NarratorOnlyTaskByData(datas.Narrator_7414901)
    this:DestroySelf()
end

function Q74149Trigger:PreTriggerIn()
    print("[MainId: 74149][Trigger: Q74149Trigger] PreTriggerIn")
end

function Q74149Trigger:LightUpTriggerIn()
    print("[MainId: 74149][Trigger: Q74149Trigger] LightUpTriggerIn")
end

function Q74149Trigger:TriggerOut()
    print("[MainId: 74149][Trigger: Q74149Trigger] TriggerOut")
end

return Q74149Trigger
