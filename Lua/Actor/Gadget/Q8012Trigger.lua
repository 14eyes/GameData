require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8012Trigger = class("Q8012Trigger", GadgetActorProxy)
Q8012Trigger.defaultAlias = "Q8012Trigger"
local Q8012ClientConfig = require("Quest/Client/Q8012ClientConfig")

local this
local subIDs = Q8012ClientConfig.SubIDs
local npcs = Q8012ClientConfig.Npcs
local datas = Q8012ClientConfig.Datas

function Q8012Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8012Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8012Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8012"):NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.Narrator_801201, nil, 8012, 0)
    this:DestroySelf()
end

function Q8012Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8012Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8012Trigger:TriggerOut()
    print("TriggerOut")
end

return Q8012Trigger
