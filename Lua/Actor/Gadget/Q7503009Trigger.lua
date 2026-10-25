require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503009Trigger = class("Q7503009Trigger", GadgetActorProxy)
Q7503009Trigger.defaultAlias = "Q7503009Trigger"
local Q75030ClientConfig = require("Quest/Client/Q75030ClientConfig")

local this
local subIDs = Q75030ClientConfig.SubIDs
local npcs = Q75030ClientConfig.Npcs
local datas = Q75030ClientConfig.Datas

function Q7503009Trigger:OnPostDataPrepare()
    print("[MainId: 75030][Trigger: Q7503009Trigger] OnPostDataPrepare")
    this = self
end

function Q7503009Trigger:OnPostComponentPrepare()
    print("[MainId: 75030][Trigger: Q7503009Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(28, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75030)
end

function Q7503009Trigger:TriggerIn()
    print("[MainId: 75030][Trigger: Q7503009Trigger] TriggerIn")
    local actor = actorMgr:GetActor("75030")
    actor:QuestNarratorTask(datas.NarratorWithId7503009)
    actor:EnterSceneLookCamera({x = -1538.0, y = 189.0, z = 9299.041}, 2, 3, false, false)
    this:DestroySelf()
end

function Q7503009Trigger:PreTriggerIn()
    print("[MainId: 75030][Trigger: Q7503009Trigger] PreTriggerIn")
end

function Q7503009Trigger:LightUpTriggerIn()
    print("[MainId: 75030][Trigger: Q7503009Trigger] LightUpTriggerIn")
end

function Q7503009Trigger:TriggerOut()
    print("[MainId: 75030][Trigger: Q7503009Trigger] TriggerOut")
end

return Q7503009Trigger
