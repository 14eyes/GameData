require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110010Trigger = class("Q7110010Trigger", GadgetActorProxy)
Q7110010Trigger.defaultAlias = "Q7110010Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110010Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110010Trigger] OnPostDataPrepare")
    this = self
end

function Q7110010Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110010Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110010Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110010Trigger] TriggerIn")
    actorMgr:GetActor("71100"):QuestNarratorTask(datas.NarratorWithId10)
    this:DestroySelf()
end

function Q7110010Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110010Trigger] PreTriggerIn")
end

function Q7110010Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110010Trigger] LightUpTriggerIn")
end

function Q7110010Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110010Trigger] TriggerOut")
end

return Q7110010Trigger
