require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75006_N2 = class("Q75006_N2", GadgetActorProxy)
Q75006_N2.defaultAlias = "Q75006_N2"
local Q75006ClientConfig = require("Quest/Client/Q75006ClientConfig")

local this
local subIDs = Q75006ClientConfig.SubIDs
local npcs = Q75006ClientConfig.Npcs
local datas = Q75006ClientConfig.Datas

function Q75006_N2:OnPostDataPrepare()
    print("[MainId: 75006][Trigger: Q75006_N2] OnPostDataPrepare")
    this = self
end

function Q75006_N2:OnPostComponentPrepare()
    print("[MainId: 75006][Trigger: Q75006_N2] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75006)
end

function Q75006_N2:TriggerIn()
    print("[MainId: 75006][Trigger: Q75006_N2] TriggerIn")
    actorMgr:GetActor("75006"):QuestNarratorTask(datas.N_7500601)
    this:DestroySelf()
end

function Q75006_N2:PreTriggerIn()
    print("[MainId: 75006][Trigger: Q75006_N2] PreTriggerIn")
end

function Q75006_N2:LightUpTriggerIn()
    print("[MainId: 75006][Trigger: Q75006_N2] LightUpTriggerIn")
end

function Q75006_N2:TriggerOut()
    print("[MainId: 75006][Trigger: Q75006_N2] TriggerOut")
end

return Q75006_N2
