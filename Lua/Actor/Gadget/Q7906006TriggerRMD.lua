require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7906006TriggerRMD = class("Q7906006TriggerRMD", GadgetActorProxy)
Q7906006TriggerRMD.defaultAlias = "Q7906006TriggerRMD"
local Q79060ClientConfig = require("Quest/Client/Q79060ClientConfig")

local this
local subIDs = Q79060ClientConfig.SubIDs
local npcs = Q79060ClientConfig.Npcs
local datas = Q79060ClientConfig.Datas

function Q7906006TriggerRMD:OnPostDataPrepare()
    print("[MainId: 79060][Trigger: Q7906006TriggerRMD] OnPostDataPrepare")
    this = self
end

function Q7906006TriggerRMD:OnPostComponentPrepare()
    print("[MainId: 79060][Trigger: Q7906006TriggerRMD] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 36, 18, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79060)
end

function Q7906006TriggerRMD:TriggerIn()
    print("[MainId: 79060][Trigger: Q7906006TriggerRMD] TriggerIn")
    actorMgr:GetActor("79060"):QuestNarratorTask(datas.NarratorWithIdStar)
    this:DestroySelf()
end

function Q7906006TriggerRMD:PreTriggerIn()
    print("[MainId: 79060][Trigger: Q7906006TriggerRMD] PreTriggerIn")
end

function Q7906006TriggerRMD:LightUpTriggerIn()
    print("[MainId: 79060][Trigger: Q7906006TriggerRMD] LightUpTriggerIn")
end

function Q7906006TriggerRMD:TriggerOut()
    print("[MainId: 79060][Trigger: Q7906006TriggerRMD] TriggerOut")
end

return Q7906006TriggerRMD
