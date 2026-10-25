require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74156Trigger3 = class("Q74156Trigger3", GadgetActorProxy)
Q74156Trigger3.defaultAlias = "Q74156Trigger3"
local Q74156ClientConfig = require("Quest/Client/Q74156ClientConfig")

local this
local subIDs = Q74156ClientConfig.SubIDs
local npcs = Q74156ClientConfig.Npcs
local datas = Q74156ClientConfig.Datas

function Q74156Trigger3:OnPostDataPrepare()
    print("[MainId: 74156][Trigger: Q74156Trigger3] OnPostDataPrepare")
    this = self
end

function Q74156Trigger3:OnPostComponentPrepare()
    print("[MainId: 74156][Trigger: Q74156Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74156Trigger3:TriggerIn()
    print("[MainId: 74156][Trigger: Q74156Trigger3] TriggerIn")
    actorMgr:GetActor("74156"):NarratorOnlyTaskByData(datas.Narrator_7415604)
    this:DestroySelf()
end

function Q74156Trigger3:PreTriggerIn()
    print("[MainId: 74156][Trigger: Q74156Trigger3] PreTriggerIn")
end

function Q74156Trigger3:LightUpTriggerIn()
    print("[MainId: 74156][Trigger: Q74156Trigger3] LightUpTriggerIn")
end

function Q74156Trigger3:TriggerOut()
    print("[MainId: 74156][Trigger: Q74156Trigger3] TriggerOut")
end

return Q74156Trigger3
