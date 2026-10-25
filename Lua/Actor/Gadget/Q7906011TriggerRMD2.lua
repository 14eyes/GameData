require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7906011TriggerRMD2 = class("Q7906011TriggerRMD2", GadgetActorProxy)
Q7906011TriggerRMD2.defaultAlias = "Q7906011TriggerRMD2"
local Q79060ClientConfig = require("Quest/Client/Q79060ClientConfig")

local this
local subIDs = Q79060ClientConfig.SubIDs
local npcs = Q79060ClientConfig.Npcs
local datas = Q79060ClientConfig.Datas

function Q7906011TriggerRMD2:OnPostDataPrepare()
    print("[MainId: 79060][Trigger: Q7906011TriggerRMD2] OnPostDataPrepare")
    this = self
end

function Q7906011TriggerRMD2:OnPostComponentPrepare()
    print("[MainId: 79060][Trigger: Q7906011TriggerRMD2] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 18, 8, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79060)
end

function Q7906011TriggerRMD2:TriggerIn()
    print("[MainId: 79060][Trigger: Q7906011TriggerRMD2] TriggerIn")
    actorMgr:GetActor("79060"):QuestNarratorTask(datas.NarratorWithIdSword2)
    this:DestroySelf()
end

function Q7906011TriggerRMD2:PreTriggerIn()
    print("[MainId: 79060][Trigger: Q7906011TriggerRMD2] PreTriggerIn")
end

function Q7906011TriggerRMD2:LightUpTriggerIn()
    print("[MainId: 79060][Trigger: Q7906011TriggerRMD2] LightUpTriggerIn")
end

function Q7906011TriggerRMD2:TriggerOut()
    print("[MainId: 79060][Trigger: Q7906011TriggerRMD2] TriggerOut")
end

return Q7906011TriggerRMD2
