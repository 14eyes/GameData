require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4014005Trigger = class("Q4014005Trigger", GadgetActorProxy)
Q4014005Trigger.defaultAlias = "Q4014005Trigger"
local Q40140ClientConfig = require("Quest/Client/Q40140ClientConfig")

local this
local subIDs = Q40140ClientConfig.SubIDs
local npcs = Q40140ClientConfig.Npcs
local points = Q40140ClientConfig.Points
local datas = Q40140ClientConfig.Datas

function Q4014005Trigger:OnPostDataPrepare()
    print("[MainId: 40140][Trigger: Q4014005Trigger] OnPostDataPrepare")
    this = self
end

function Q4014005Trigger:OnPostComponentPrepare()
    print("[MainId: 40140][Trigger: Q4014005Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4014005Trigger:TriggerIn()
    print("[MainId: 40140][Trigger: Q4014005Trigger] TriggerIn")
    actorMgr:GetActor("40140"):NarratorOnlyTaskByData(datas.Narrator_4014096, nil, 40140)
    this:DestroySelf()
end

function Q4014005Trigger:PreTriggerIn()
    print("[MainId: 40140][Trigger: Q4014005Trigger] PreTriggerIn")
end

function Q4014005Trigger:LightUpTriggerIn()
    print("[MainId: 40140][Trigger: Q4014005Trigger] LightUpTriggerIn")
end

function Q4014005Trigger:TriggerOut()
    print("[MainId: 40140][Trigger: Q4014005Trigger] TriggerOut")
end

return Q4014005Trigger
