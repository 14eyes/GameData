require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401103Trigger = class("Q1401103Trigger", GadgetActorProxy)
Q1401103Trigger.defaultAlias = "Q1401103Trigger"
local Q14011ClientConfig = require("Quest/Client/Q14011ClientConfig")

local this
local subIDs = Q14011ClientConfig.SubIDs
local npcs = Q14011ClientConfig.Npcs
local points = Q14011ClientConfig.Points

function Q1401103Trigger:OnPostDataPrepare()
    print("[MainId: 14011][Trigger: Q1401103Trigger] OnPostDataPrepare")
    this = self
end

function Q1401103Trigger:OnPostComponentPrepare()
    print("[MainId: 14011][Trigger: Q1401103Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401103Trigger:TriggerIn()
    print("[MainId: 14011][Trigger: Q1401103Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1401103)
    this:DestroySelf()
end

function Q1401103Trigger:PreTriggerIn()
    print("[MainId: 14011][Trigger: Q1401103Trigger] PreTriggerIn")
end

function Q1401103Trigger:LightUpTriggerIn()
    print("[MainId: 14011][Trigger: Q1401103Trigger] LightUpTriggerIn")
end

function Q1401103Trigger:TriggerOut()
    print("[MainId: 14011][Trigger: Q1401103Trigger] TriggerOut")
end

return Q1401103Trigger
