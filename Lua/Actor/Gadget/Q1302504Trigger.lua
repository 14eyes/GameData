require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302504Trigger = class("Q1302504Trigger", GadgetActorProxy)
Q1302504Trigger.defaultAlias = "Q1302504Trigger"
local Q13025ClientConfig = require("Quest/Client/Q13025ClientConfig")

local this
local subIDs = Q13025ClientConfig.SubIDs
local npcs = Q13025ClientConfig.Npcs
local datas = Q13025ClientConfig.Datas

function Q1302504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(26.03869, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302504Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13025"):AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:GetActor("13025"):NarratorOnlyTaskByData(datas.Narrator_1302501)
    end)

    this:DestroySelf()
end

function Q1302504Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302504Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302504Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1302504Trigger
