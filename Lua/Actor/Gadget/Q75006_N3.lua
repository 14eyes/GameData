require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75006_N3 = class("Q75006_N3", GadgetActorProxy)
Q75006_N3.defaultAlias = "Q75006_N3"
local Q75006ClientConfig = require("Quest/Client/Q75006ClientConfig")

local this
local subIDs = Q75006ClientConfig.SubIDs
local npcs = Q75006ClientConfig.Npcs
local datas = Q75006ClientConfig.Datas

function Q75006_N3:OnPostDataPrepare()
    print("[MainId: 75006][Trigger: Q75006_N3] OnPostDataPrepare")
    this = self
end

function Q75006_N3:OnPostComponentPrepare()
    print("[MainId: 75006][Trigger: Q75006_N3] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75006)
end

function Q75006_N3:TriggerIn()
    print("[MainId: 75006][Trigger: Q75006_N3] TriggerIn")
    actorMgr:GetActor("75006"):QuestNarratorTask(datas.N3)
    this:DestroySelf()
end

function Q75006_N3:PreTriggerIn()
    print("[MainId: 75006][Trigger: Q75006_N3] PreTriggerIn")
end

function Q75006_N3:LightUpTriggerIn()
    print("[MainId: 75006][Trigger: Q75006_N3] LightUpTriggerIn")
end

function Q75006_N3:TriggerOut()
    print("[MainId: 75006][Trigger: Q75006_N3] TriggerOut")
end

return Q75006_N3
