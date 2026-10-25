require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500607_RMD = class("Q7500607_RMD", GadgetActorProxy)
Q7500607_RMD.defaultAlias = "Q7500607_RMD"
local Q75006ClientConfig = require("Quest/Client/Q75006ClientConfig")

local this
local subIDs = Q75006ClientConfig.SubIDs
local npcs = Q75006ClientConfig.Npcs
local datas = Q75006ClientConfig.Datas

function Q7500607_RMD:OnPostDataPrepare()
    print("[MainId: 75006][Trigger: Q7500607_RMD] OnPostDataPrepare")
    this = self
end

function Q7500607_RMD:OnPostComponentPrepare()
    print("[MainId: 75006][Trigger: Q7500607_RMD] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75006)
end

function Q7500607_RMD:TriggerIn()
    print("[MainId: 75006][Trigger: Q7500607_RMD] TriggerIn")
    actorMgr:GetActor("75006"):QuestNarratorTask(datas.N11)
    this:DestroySelf()
end

function Q7500607_RMD:PreTriggerIn()
    print("[MainId: 75006][Trigger: Q7500607_RMD] PreTriggerIn")
end

function Q7500607_RMD:LightUpTriggerIn()
    print("[MainId: 75006][Trigger: Q7500607_RMD] LightUpTriggerIn")
end

function Q7500607_RMD:TriggerOut()
    print("[MainId: 75006][Trigger: Q7500607_RMD] TriggerOut")
end

return Q7500607_RMD
