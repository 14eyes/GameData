require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400006_NarratorTrigger1 = class("Q400006_NarratorTrigger1", GadgetActorProxy)
Q400006_NarratorTrigger1.defaultAlias = "Q400006_NarratorTrigger1"
local Q4000ClientConfig = require("Quest/Client/Q4000ClientConfig")

local this
local subIDs = Q4000ClientConfig.SubIDs
local npcs = Q4000ClientConfig.Npcs
local points = Q4000ClientConfig.Points
local datas = Q4000ClientConfig.Datas

function Q400006_NarratorTrigger1:OnPostDataPrepare()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger1] OnPostDataPrepare")
    this = self
end

function Q400006_NarratorTrigger1:OnPostComponentPrepare()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400006_NarratorTrigger1:TriggerIn()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger1] TriggerIn")
    actorMgr:GetActor("4000"):NarratorOnlyTaskByData(datas.Narrator_400001, nil, 4000)
    this:DestroySelf()
end

function Q400006_NarratorTrigger1:PreTriggerIn()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger1] PreTriggerIn")
end

function Q400006_NarratorTrigger1:LightUpTriggerIn()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger1] LightUpTriggerIn")
end

function Q400006_NarratorTrigger1:TriggerOut()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger1] TriggerOut")
end

return Q400006_NarratorTrigger1
