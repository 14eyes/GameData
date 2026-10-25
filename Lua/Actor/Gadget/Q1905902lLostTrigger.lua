require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905902lLostTrigger = class("Q1905902lLostTrigger", GadgetActorProxy)
Q1905902lLostTrigger.defaultAlias = "Q1905902lLostTrigger"
local Q19059ClientConfig = require("Quest/Client/Q19059ClientConfig")

local this
local subIDs = Q19059ClientConfig.SubIDs
local npcs = Q19059ClientConfig.Npcs
local points = Q19059ClientConfig.Points
local datas = Q19059ClientConfig.Datas

function Q1905902lLostTrigger:OnPostDataPrepare()
    print("[MainId: 19059][Trigger: Q1905902lLostTrigger] OnPostDataPrepare")
    this = self
end

function Q1905902lLostTrigger:OnPostComponentPrepare()
    print("[MainId: 19059][Trigger: Q1905902lLostTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8.262067, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1905902lLostTrigger:TriggerIn()
    print("[MainId: 19059][Trigger: Q1905902lLostTrigger] TriggerIn")
    actorMgr:GetActor("19059"):NarratorOnlyTaskByData(datas.Narrator_1905901)
    actorUtils.FinishQuestID(false, 1905902)
    this:DestroySelf()
end

function Q1905902lLostTrigger:PreTriggerIn()
    print("[MainId: 19059][Trigger: Q1905902lLostTrigger] PreTriggerIn")
end

function Q1905902lLostTrigger:LightUpTriggerIn()
    print("[MainId: 19059][Trigger: Q1905902lLostTrigger] LightUpTriggerIn")
end

function Q1905902lLostTrigger:TriggerOut()
    print("[MainId: 19059][Trigger: Q1905902lLostTrigger] TriggerOut")
end

return Q1905902lLostTrigger
