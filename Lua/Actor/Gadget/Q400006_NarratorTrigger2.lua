require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400006_NarratorTrigger2 = class("Q400006_NarratorTrigger2", GadgetActorProxy)
Q400006_NarratorTrigger2.defaultAlias = "Q400006_NarratorTrigger2"
local Q4000ClientConfig = require("Quest/Client/Q4000ClientConfig")

local this
local subIDs = Q4000ClientConfig.SubIDs
local npcs = Q4000ClientConfig.Npcs
local points = Q4000ClientConfig.Points
local datas = Q4000ClientConfig.Datas

function Q400006_NarratorTrigger2:OnPostDataPrepare()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger2] OnPostDataPrepare")
    this = self
end

function Q400006_NarratorTrigger2:OnPostComponentPrepare()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400006_NarratorTrigger2:TriggerIn()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger2] TriggerIn")
    actorMgr:GetActor("4000"):NarratorOnlyTaskByData(datas.Narrator_400002, nil, 4000)
    this:DestroySelf()
end

function Q400006_NarratorTrigger2:PreTriggerIn()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger2] PreTriggerIn")
end

function Q400006_NarratorTrigger2:LightUpTriggerIn()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger2] LightUpTriggerIn")
end

function Q400006_NarratorTrigger2:TriggerOut()
    print("[MainId: 4000][Trigger: Q400006_NarratorTrigger2] TriggerOut")
end

return Q400006_NarratorTrigger2
