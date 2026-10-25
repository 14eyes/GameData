require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110502Trigger = class("Q7110502Trigger", GadgetActorProxy)
Q7110502Trigger.defaultAlias = "Q7110502Trigger"
local Q71105ClientConfig = require("Quest/Client/Q71105ClientConfig")

local this
local subIDs = Q71105ClientConfig.SubIDs
local npcs = Q71105ClientConfig.Npcs
local points = Q71105ClientConfig.Points
local datas = Q71105ClientConfig.Datas

function Q7110502Trigger:OnPostDataPrepare()
    print("[MainId: 71105][Trigger: Q7110502Trigger] OnPostDataPrepare")
    this = self
end

function Q7110502Trigger:OnPostComponentPrepare()
    print("[MainId: 71105][Trigger: Q7110502Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7110502Trigger:TriggerIn()
    print("[MainId: 71105][Trigger: Q7110502Trigger] TriggerIn")
    actorMgr:GetActor("71105"):QuestNarratorTask(datas.Narrator_7110502)
    this:DestroySelf()
end

function Q7110502Trigger:PreTriggerIn()
    print("[MainId: 71105][Trigger: Q7110502Trigger] PreTriggerIn")
end

function Q7110502Trigger:LightUpTriggerIn()
    print("[MainId: 71105][Trigger: Q7110502Trigger] LightUpTriggerIn")
end

function Q7110502Trigger:TriggerOut()
    print("[MainId: 71105][Trigger: Q7110502Trigger] TriggerOut")
end

return Q7110502Trigger
