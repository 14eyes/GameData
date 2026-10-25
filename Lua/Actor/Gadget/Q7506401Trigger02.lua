require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506401Trigger02 = class("Q7506401Trigger02", GadgetActorProxy)
Q7506401Trigger02.defaultAlias = "Q7506401Trigger02"
local Q75064ClientConfig = require("Quest/Client/Q75064ClientConfig")

local this
local subIDs = Q75064ClientConfig.SubIDs
local npcs = Q75064ClientConfig.Npcs
local datas = Q75064ClientConfig.Datas

function Q7506401Trigger02:OnPostDataPrepare()
    print("[MainId: 75064][Trigger: Q7506401Trigger02] OnPostDataPrepare")
    this = self
end

function Q7506401Trigger02:OnPostComponentPrepare()
    print("[MainId: 75064][Trigger: Q7506401Trigger02] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75064)
end

function Q7506401Trigger02:TriggerIn()
    print("[MainId: 75064][Trigger: Q7506401Trigger02] TriggerIn")
    actorMgr:GetActor("75064"):QuestNarratorTask(datas.NarratorWithId7506402)
    this:DestroySelf()
end

function Q7506401Trigger02:PreTriggerIn()
    print("[MainId: 75064][Trigger: Q7506401Trigger02] PreTriggerIn")
end

function Q7506401Trigger02:LightUpTriggerIn()
    print("[MainId: 75064][Trigger: Q7506401Trigger02] LightUpTriggerIn")
end

function Q7506401Trigger02:TriggerOut()
    print("[MainId: 75064][Trigger: Q7506401Trigger02] TriggerOut")
end

return Q7506401Trigger02
