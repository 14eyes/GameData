require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402215TriggerFinish = class("Q1402215TriggerFinish", GadgetActorProxy)
Q1402215TriggerFinish.defaultAlias = "Q1402215TriggerFinish"
local Q14022ClientConfig = require("Quest/Client/Q14022ClientConfig")

local this
local subIDs = Q14022ClientConfig.SubIDs
local npcs = Q14022ClientConfig.Npcs
local points = Q14022ClientConfig.Points
local datas = Q14022ClientConfig.Datas

function Q1402215TriggerFinish:OnPostDataPrepare()
    print("[MainId: 14022][Trigger: Q1402215TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q1402215TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 14022][Trigger: Q1402215TriggerFinish] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14022)
end

function Q1402215TriggerFinish:TriggerIn()
    print("[MainId: 14022][Trigger: Q1402215TriggerFinish] TriggerIn")
    actorUtils.FinishQuestID(false, 1402215)
    this:DestroySelf()
end

function Q1402215TriggerFinish:PreTriggerIn()
    print("[MainId: 14022][Trigger: Q1402215TriggerFinish] PreTriggerIn")
end

function Q1402215TriggerFinish:LightUpTriggerIn()
    print("[MainId: 14022][Trigger: Q1402215TriggerFinish] LightUpTriggerIn")
end

function Q1402215TriggerFinish:TriggerOut()
    print("[MainId: 14022][Trigger: Q1402215TriggerFinish] TriggerOut")
end

return Q1402215TriggerFinish
