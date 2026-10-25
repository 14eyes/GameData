require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500602_NTrigger = class("Q7500602_NTrigger", GadgetActorProxy)
Q7500602_NTrigger.defaultAlias = "Q7500602_NTrigger"
local Q75006ClientConfig = require("Quest/Client/Q75006ClientConfig")

local this
local subIDs = Q75006ClientConfig.SubIDs
local npcs = Q75006ClientConfig.Npcs
local datas = Q75006ClientConfig.Datas

function Q7500602_NTrigger:OnPostDataPrepare()
    print("[MainId: 75006][Trigger: Q7500602_NTrigger] OnPostDataPrepare")
    this = self
end

function Q7500602_NTrigger:OnPostComponentPrepare()
    print("[MainId: 75006][Trigger: Q7500602_NTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75006)
end

function Q7500602_NTrigger:TriggerIn()
    print("[MainId: 75006][Trigger: Q7500602_NTrigger] TriggerIn")
    actorMgr:GetActor("75006"):QuestNarratorTask(datas.N7500602)
    this:DestroySelf()
end

function Q7500602_NTrigger:PreTriggerIn()
    print("[MainId: 75006][Trigger: Q7500602_NTrigger] PreTriggerIn")
end

function Q7500602_NTrigger:LightUpTriggerIn()
    print("[MainId: 75006][Trigger: Q7500602_NTrigger] LightUpTriggerIn")
end

function Q7500602_NTrigger:TriggerOut()
    print("[MainId: 75006][Trigger: Q7500602_NTrigger] TriggerOut")
end

return Q7500602_NTrigger
