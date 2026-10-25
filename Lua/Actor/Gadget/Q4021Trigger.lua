require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4021Trigger = class("Q4021Trigger", GadgetActorProxy)
Q4021Trigger.defaultAlias = "Q4021Trigger"
local Q4021ClientConfig = require("Quest/Client/Q4021ClientConfig")

local this
local subIDs = Q4021ClientConfig.SubIDs
local npcs = Q4021ClientConfig.Npcs
local points = Q4021ClientConfig.Points
local datas = Q4021ClientConfig.Datas

function Q4021Trigger:OnPostDataPrepare()
    print("[MainId: 4021][Trigger: Q4021Trigger] OnPostDataPrepare")
    this = self
end

function Q4021Trigger:OnPostComponentPrepare()
    print("[MainId: 4021][Trigger: Q4021Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4021Trigger:TriggerIn()
    print("[MainId: 4021][Trigger: Q4021Trigger] TriggerIn")
    local actor = actorMgr:GetActor("4021")
    this:DestroySelf()
    actor:NarratorOnlyTaskByData(datas.Narrator_402101)
    actorUtils.FinishQuestID(false, 402115)
end

function Q4021Trigger:PreTriggerIn()
    print("[MainId: 4021][Trigger: Q4021Trigger] PreTriggerIn")
end

function Q4021Trigger:LightUpTriggerIn()
    print("[MainId: 4021][Trigger: Q4021Trigger] LightUpTriggerIn")
end

function Q4021Trigger:TriggerOut()
    print("[MainId: 4021][Trigger: Q4021Trigger] TriggerOut")
end

return Q4021Trigger
