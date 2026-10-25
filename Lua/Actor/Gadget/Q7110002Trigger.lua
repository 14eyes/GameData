require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110002Trigger = class("Q7110002Trigger", GadgetActorProxy)
Q7110002Trigger.defaultAlias = "Q7110002Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110002Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110002Trigger] OnPostDataPrepare")
    this = self
end

function Q7110002Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110002Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110002Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110002Trigger] TriggerIn")
    actorMgr:GetActor("71100"):NarratorOnlyTaskByData(datas.NarratorWithId02)
    this:DestroySelf()
end

function Q7110002Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110002Trigger] PreTriggerIn")
end

function Q7110002Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110002Trigger] LightUpTriggerIn")
end

function Q7110002Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110002Trigger] TriggerOut")
end

return Q7110002Trigger
