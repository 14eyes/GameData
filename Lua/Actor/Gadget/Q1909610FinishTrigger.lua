require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1909610FinishTrigger = class("Q1909610FinishTrigger", GadgetActorProxy)
Q1909610FinishTrigger.defaultAlias = "Q1909610FinishTrigger"
local Q19096ClientConfig = require("Quest/Client/Q19096ClientConfig")

local this
local subIDs = Q19096ClientConfig.SubIDs
local npcs = Q19096ClientConfig.Npcs
local points = Q19096ClientConfig.Points
local datas = Q19096ClientConfig.Datas

function Q1909610FinishTrigger:OnPostDataPrepare()
    print("[MainId: 19096][Trigger: Q1909610FinishTrigger] OnPostDataPrepare")
    this = self
end

function Q1909610FinishTrigger:OnPostComponentPrepare()
    print("[MainId: 19096][Trigger: Q1909610FinishTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1909610FinishTrigger:TriggerIn()
    print("[MainId: 19096][Trigger: Q1909610FinishTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1909610)
    this:DestroySelf()
end

function Q1909610FinishTrigger:PreTriggerIn()
    print("[MainId: 19096][Trigger: Q1909610FinishTrigger] PreTriggerIn")
end

function Q1909610FinishTrigger:LightUpTriggerIn()
    print("[MainId: 19096][Trigger: Q1909610FinishTrigger] LightUpTriggerIn")
end

function Q1909610FinishTrigger:TriggerOut()
    print("[MainId: 19096][Trigger: Q1909610FinishTrigger] TriggerOut")
end

return Q1909610FinishTrigger
