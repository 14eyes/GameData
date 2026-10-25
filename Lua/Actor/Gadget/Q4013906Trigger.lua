require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013906Trigger = class("Q4013906Trigger", GadgetActorProxy)
Q4013906Trigger.defaultAlias = "Q4013906Trigger"
local Q40139ClientConfig = require("Quest/Client/Q40139ClientConfig")

local this
local subIDs = Q40139ClientConfig.SubIDs
local npcs = Q40139ClientConfig.Npcs
local points = Q40139ClientConfig.Points
local datas = Q40139ClientConfig.Datas

function Q4013906Trigger:OnPostDataPrepare()
    print("[MainId: 40139][Trigger: Q4013906Trigger] OnPostDataPrepare")
    this = self
end

function Q4013906Trigger:OnPostComponentPrepare()
    print("[MainId: 40139][Trigger: Q4013906Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013906Trigger:TriggerIn()
    print("[MainId: 40139][Trigger: Q4013906Trigger] TriggerIn")
    actorMgr:GetActor("40139"):NarratorOnlyTaskByData(datas.Narrator_4013997, nil, 40139)
    this:DestroySelf()
end

function Q4013906Trigger:PreTriggerIn()
    print("[MainId: 40139][Trigger: Q4013906Trigger] PreTriggerIn")
end

function Q4013906Trigger:LightUpTriggerIn()
    print("[MainId: 40139][Trigger: Q4013906Trigger] LightUpTriggerIn")
end

function Q4013906Trigger:TriggerOut()
    print("[MainId: 40139][Trigger: Q4013906Trigger] TriggerOut")
end

return Q4013906Trigger
