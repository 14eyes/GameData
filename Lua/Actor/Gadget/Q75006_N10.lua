require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75006_N10 = class("Q75006_N10", GadgetActorProxy)
Q75006_N10.defaultAlias = "Q75006_N10"
local Q75006ClientConfig = require("Quest/Client/Q75006ClientConfig")

local this
local subIDs = Q75006ClientConfig.SubIDs
local npcs = Q75006ClientConfig.Npcs
local datas = Q75006ClientConfig.Datas

function Q75006_N10:OnPostDataPrepare()
    print("[MainId: 75006][Trigger: Q75006_N10] OnPostDataPrepare")
    this = self
end

function Q75006_N10:OnPostComponentPrepare()
    print("[MainId: 75006][Trigger: Q75006_N10] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75006)
end

function Q75006_N10:TriggerIn()
    print("[MainId: 75006][Trigger: Q75006_N10] TriggerIn")
    actorMgr:GetActor("75006"):QuestNarratorTask(datas.N10)
    this:DestroySelf()
end

function Q75006_N10:PreTriggerIn()
    print("[MainId: 75006][Trigger: Q75006_N10] PreTriggerIn")
end

function Q75006_N10:LightUpTriggerIn()
    print("[MainId: 75006][Trigger: Q75006_N10] LightUpTriggerIn")
end

function Q75006_N10:TriggerOut()
    print("[MainId: 75006][Trigger: Q75006_N10] TriggerOut")
end

return Q75006_N10
