require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401202TriggerTalk = class("Q401202TriggerTalk", GadgetActorProxy)
Q401202TriggerTalk.defaultAlias = "Q401202TriggerTalk"
local Q4012ClientConfig = require("Quest/Client/Q4012ClientConfig")

local this
local subIDs = Q4012ClientConfig.SubIDs
local npcs = Q4012ClientConfig.Npcs
local points = Q4012ClientConfig.Points
local datas = Q4012ClientConfig.Datas

function Q401202TriggerTalk:OnPostDataPrepare()
    print("[MainId: 4012][Trigger: Q401202TriggerTalk] OnPostDataPrepare")
    this = self
end

function Q401202TriggerTalk:OnPostComponentPrepare()
    print("[MainId: 4012][Trigger: Q401202TriggerTalk] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401202TriggerTalk:TriggerIn()
    print("[MainId: 4012][Trigger: Q401202TriggerTalk] TriggerIn")
    actorMgr:GetActor("4012"):NarratorOnlyTaskByData(datas.NarratorWithId401202talk)
    this:DestroySelf()
end

function Q401202TriggerTalk:PreTriggerIn()
    print("[MainId: 4012][Trigger: Q401202TriggerTalk] PreTriggerIn")
end

function Q401202TriggerTalk:LightUpTriggerIn()
    print("[MainId: 4012][Trigger: Q401202TriggerTalk] LightUpTriggerIn")
end

function Q401202TriggerTalk:TriggerOut()
    print("[MainId: 4012][Trigger: Q401202TriggerTalk] TriggerOut")
end

return Q401202TriggerTalk
