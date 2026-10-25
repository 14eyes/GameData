require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401705_ChallengeFailTrigger = class("Q1401705_ChallengeFailTrigger", GadgetActorProxy)
Q1401705_ChallengeFailTrigger.defaultAlias = "Q1401705_ChallengeFailTrigger"
local Q14017ClientConfig = require("Quest/Client/Q14017ClientConfig")

local this
local subIDs = Q14017ClientConfig.SubIDs
local npcs = Q14017ClientConfig.Npcs
local points = Q14017ClientConfig.Points
local datas = Q14017ClientConfig.Datas

function Q1401705_ChallengeFailTrigger:OnPostDataPrepare()
    print("[MainId: 14017][Trigger: Q1401705_ChallengeFailTrigger] OnPostDataPrepare")
    this = self
end

function Q1401705_ChallengeFailTrigger:OnPostComponentPrepare()
    print("[MainId: 14017][Trigger: Q1401705_ChallengeFailTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401705_ChallengeFailTrigger:TriggerIn()
    print("[MainId: 14017][Trigger: Q1401705_ChallengeFailTrigger] TriggerIn")
end

function Q1401705_ChallengeFailTrigger:PreTriggerIn()
    print("[MainId: 14017][Trigger: Q1401705_ChallengeFailTrigger] PreTriggerIn")
end

function Q1401705_ChallengeFailTrigger:LightUpTriggerIn()
    print("[MainId: 14017][Trigger: Q1401705_ChallengeFailTrigger] LightUpTriggerIn")
end

function Q1401705_ChallengeFailTrigger:TriggerOut()
    print("[MainId: 14017][Trigger: Q1401705_ChallengeFailTrigger] TriggerOut")
    actorUtils.FinishQuestID(true, 1401705)
    this:DestroySelf()
end

return Q1401705_ChallengeFailTrigger
