require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7906010TriggerRMD = class("Q7906010TriggerRMD", GadgetActorProxy)
Q7906010TriggerRMD.defaultAlias = "Q7906010TriggerRMD"
local Q79060ClientConfig = require("Quest/Client/Q79060ClientConfig")

local this
local subIDs = Q79060ClientConfig.SubIDs
local npcs = Q79060ClientConfig.Npcs
local datas = Q79060ClientConfig.Datas

function Q7906010TriggerRMD:OnPostDataPrepare()
    print("[MainId: 79060][Trigger: Q7906010TriggerRMD] OnPostDataPrepare")
    this = self
end

function Q7906010TriggerRMD:OnPostComponentPrepare()
    print("[MainId: 79060][Trigger: Q7906010TriggerRMD] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(150, 100, 80, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79060)
end

function Q7906010TriggerRMD:TriggerIn()
    print("[MainId: 79060][Trigger: Q7906010TriggerRMD] TriggerIn")
    actorMgr:GetActor("79060"):QuestNarratorTask(datas.NarratorWithIdWish)
    this:DestroySelf()
end

function Q7906010TriggerRMD:PreTriggerIn()
    print("[MainId: 79060][Trigger: Q7906010TriggerRMD] PreTriggerIn")
end

function Q7906010TriggerRMD:LightUpTriggerIn()
    print("[MainId: 79060][Trigger: Q7906010TriggerRMD] LightUpTriggerIn")
end

function Q7906010TriggerRMD:TriggerOut()
    print("[MainId: 79060][Trigger: Q7906010TriggerRMD] TriggerOut")
end

return Q7906010TriggerRMD
