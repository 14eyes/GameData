require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7415609Trigger = class("Q7415609Trigger", GadgetActorProxy)
Q7415609Trigger.defaultAlias = "Q7415609Trigger"
local Q74156ClientConfig = require("Quest/Client/Q74156ClientConfig")

local this
local subIDs = Q74156ClientConfig.SubIDs
local npcs = Q74156ClientConfig.Npcs
local datas = Q74156ClientConfig.Datas

function Q7415609Trigger:OnPostDataPrepare()
    print("[MainId: 74156][Trigger: Q7415609Trigger] OnPostDataPrepare")
    this = self
end

function Q7415609Trigger:OnPostComponentPrepare()
    print("[MainId: 74156][Trigger: Q7415609Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7415609Trigger:TriggerIn()
    print("[MainId: 74156][Trigger: Q7415609Trigger] TriggerIn")
    actorMgr:GetActor("74156"):NarratorOnlyTaskByData(datas.Narrator_7415605)
    this:DestroySelf()
end

function Q7415609Trigger:PreTriggerIn()
    print("[MainId: 74156][Trigger: Q7415609Trigger] PreTriggerIn")
end

function Q7415609Trigger:LightUpTriggerIn()
    print("[MainId: 74156][Trigger: Q7415609Trigger] LightUpTriggerIn")
end

function Q7415609Trigger:TriggerOut()
    print("[MainId: 74156][Trigger: Q7415609Trigger] TriggerOut")
end

return Q7415609Trigger
