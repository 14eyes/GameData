require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401107Triggerkaiche = class("Q401107Triggerkaiche", GadgetActorProxy)
Q401107Triggerkaiche.defaultAlias = "Q401107Triggerkaiche"
local Q4011ClientConfig = require("Quest/Client/Q4011ClientConfig")

local this
local subIDs = Q4011ClientConfig.SubIDs
local npcs = Q4011ClientConfig.Npcs
local points = Q4011ClientConfig.Points
local datas = Q4011ClientConfig.Datas

function Q401107Triggerkaiche:OnPostDataPrepare()
    print("[MainId: 4011][Trigger: Q401107Triggerkaiche] OnPostDataPrepare")
    this = self
end

function Q401107Triggerkaiche:OnPostComponentPrepare()
    print("[MainId: 4011][Trigger: Q401107Triggerkaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401107Triggerkaiche:TriggerIn()
    print("[MainId: 4011][Trigger: Q401107Triggerkaiche] TriggerIn")
    actorMgr:GetActor("4011"):NarratorOnlyTaskByData(datas.NarratorWithId_02)
    this:DestroySelf()
end

function Q401107Triggerkaiche:PreTriggerIn()
    print("[MainId: 4011][Trigger: Q401107Triggerkaiche] PreTriggerIn")
end

function Q401107Triggerkaiche:LightUpTriggerIn()
    print("[MainId: 4011][Trigger: Q401107Triggerkaiche] LightUpTriggerIn")
end

function Q401107Triggerkaiche:TriggerOut()
    print("[MainId: 4011][Trigger: Q401107Triggerkaiche] TriggerOut")
end

return Q401107Triggerkaiche
