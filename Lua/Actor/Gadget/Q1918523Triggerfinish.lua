require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918523Triggerfinish = class("Q1918523Triggerfinish", GadgetActorProxy)
Q1918523Triggerfinish.defaultAlias = "Q1918523Triggerfinish"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918523Triggerfinish:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918523Triggerfinish] OnPostDataPrepare")
    this = self
end

function Q1918523Triggerfinish:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918523Triggerfinish] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19185)
end

function Q1918523Triggerfinish:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918523Triggerfinish] TriggerIn")
    actorUtils.FinishQuestID(false, 1918523)
    this:DestroySelf()
end

function Q1918523Triggerfinish:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918523Triggerfinish] PreTriggerIn")
end

function Q1918523Triggerfinish:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918523Triggerfinish] LightUpTriggerIn")
end

function Q1918523Triggerfinish:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918523Triggerfinish] TriggerOut")
end

return Q1918523Triggerfinish
