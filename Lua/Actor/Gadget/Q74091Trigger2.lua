require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74091Trigger2 = class("Q74091Trigger2", GadgetActorProxy)
Q74091Trigger2.defaultAlias = "Q74091Trigger2"
local Q74091ClientConfig = require("Quest/Client/Q74091ClientConfig")

local this
local subIDs = Q74091ClientConfig.SubIDs
local npcs = Q74091ClientConfig.Npcs
local points = Q74091ClientConfig.Points
local datas = Q74091ClientConfig.Datas

function Q74091Trigger2:OnPostDataPrepare()
    print("[MainId: 74091][Trigger: Q74091Trigger2] OnPostDataPrepare")
    this = self
end

function Q74091Trigger2:OnPostComponentPrepare()
    print("[MainId: 74091][Trigger: Q74091Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74091Trigger2:TriggerIn()
    print("[MainId: 74091][Trigger: Q74091Trigger2] TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("74091"):NarratorOnlyTaskByData(datas.NarratorWithId, function(arg1)
        actorUtils.FinishQuestID(false, 7409102)
    end, 74104)
end

function Q74091Trigger2:PreTriggerIn()
    print("[MainId: 74091][Trigger: Q74091Trigger2] PreTriggerIn")
end

function Q74091Trigger2:LightUpTriggerIn()
    print("[MainId: 74091][Trigger: Q74091Trigger2] LightUpTriggerIn")
end

function Q74091Trigger2:TriggerOut()
    print("[MainId: 74091][Trigger: Q74091Trigger2] TriggerOut")
end

return Q74091Trigger2
