require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506401Trigger = class("Q7506401Trigger", GadgetActorProxy)
Q7506401Trigger.defaultAlias = "Q7506401Trigger"
local Q75064ClientConfig = require("Quest/Client/Q75064ClientConfig")

local this
local subIDs = Q75064ClientConfig.SubIDs
local npcs = Q75064ClientConfig.Npcs
local datas = Q75064ClientConfig.Datas

function Q7506401Trigger:OnPostDataPrepare()
    print("[MainId: 75064][Trigger: Q7506401Trigger] OnPostDataPrepare")
    this = self
end

function Q7506401Trigger:OnPostComponentPrepare()
    print("[MainId: 75064][Trigger: Q7506401Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75064)
end

function Q7506401Trigger:TriggerIn()
    print("[MainId: 75064][Trigger: Q7506401Trigger] TriggerIn")
    actorMgr:GetActor("75064"):QuestNarratorTask(datas.NarratorWithId7506401)
    this:DestroySelf()
end

function Q7506401Trigger:PreTriggerIn()
    print("[MainId: 75064][Trigger: Q7506401Trigger] PreTriggerIn")
end

function Q7506401Trigger:LightUpTriggerIn()
    print("[MainId: 75064][Trigger: Q7506401Trigger] LightUpTriggerIn")
end

function Q7506401Trigger:TriggerOut()
    print("[MainId: 75064][Trigger: Q7506401Trigger] TriggerOut")
end

return Q7506401Trigger
