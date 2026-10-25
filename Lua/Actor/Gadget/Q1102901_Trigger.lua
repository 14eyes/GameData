require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102901_Trigger = class("Q1102901_Trigger", GadgetActorProxy)
Q1102901_Trigger.defaultAlias = "Q1102901_Trigger"
local Q11029ClientConfig = require("Quest/Client/Q11029ClientConfig")

local this
local subIDs = Q11029ClientConfig.SubIDs
local npcs = Q11029ClientConfig.Npcs
local datas = Q11029ClientConfig.Datas

function Q1102901_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1102901_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1102901_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11029"):AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:GetActor("11029"):CallDelay(1, function(arg1)
            actorMgr:GetActor("11029"):NarratorOnlyTaskByData(datas.Narrator_1102901, nil, 11029)
        end)
    end)

    this:DestroySelf()
end

function Q1102901_Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1102901_Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1102901_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102901_Trigger
