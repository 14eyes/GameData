require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009906Trigger = class("Q4009906Trigger", GadgetActorProxy)
Q4009906Trigger.defaultAlias = "Q4009906Trigger"
local Q40099ClientConfig = require("Quest/Client/Q40099ClientConfig")

local this
local subIDs = Q40099ClientConfig.SubIDs
local npcs = Q40099ClientConfig.Npcs
local datas = Q40099ClientConfig.Datas

function Q4009906Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4009906Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4009906Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40099"):NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 40099)
    this:DestroySelf()
end

function Q4009906Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4009906Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4009906Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4009906Trigger
