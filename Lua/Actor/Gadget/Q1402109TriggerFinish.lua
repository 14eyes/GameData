require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402109TriggerFinish = class("Q1402109TriggerFinish", GadgetActorProxy)
Q1402109TriggerFinish.defaultAlias = "Q1402109TriggerFinish"
local Q14021ClientConfig = require("Quest/Client/Q14021ClientConfig")

local this
local subIDs = Q14021ClientConfig.SubIDs
local npcs = Q14021ClientConfig.Npcs
local points = Q14021ClientConfig.Points
local datas = Q14021ClientConfig.Datas

function Q1402109TriggerFinish:OnPostDataPrepare()
    print("[MainId: 14021][Trigger: Q1402109TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q1402109TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 14021][Trigger: Q1402109TriggerFinish] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1402109TriggerFinish:TriggerIn()
    print("[MainId: 14021][Trigger: Q1402109TriggerFinish] TriggerIn")
    actorUtils.FinishQuestID(false, 1402109)
    this:DestroySelf()
end

function Q1402109TriggerFinish:PreTriggerIn()
    print("[MainId: 14021][Trigger: Q1402109TriggerFinish] PreTriggerIn")
end

function Q1402109TriggerFinish:LightUpTriggerIn()
    print("[MainId: 14021][Trigger: Q1402109TriggerFinish] LightUpTriggerIn")
end

function Q1402109TriggerFinish:TriggerOut()
    print("[MainId: 14021][Trigger: Q1402109TriggerFinish] TriggerOut")
end

return Q1402109TriggerFinish
