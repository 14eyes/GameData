require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011414Talk = class("Q4011414Talk", GadgetActorProxy)
Q4011414Talk.defaultAlias = "Q4011414Talk"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011414Talk:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011414Talk] OnPostDataPrepare")
    this = self
end

function Q4011414Talk:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011414Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(119, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011414Talk:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011414Talk] TriggerIn")
    actorMgr:GetActor("40114"):NarratorOnlyTaskByData(datas.Q4011413kaiche)
    this:DestroySelf()
end

function Q4011414Talk:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011414Talk] PreTriggerIn")
end

function Q4011414Talk:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011414Talk] LightUpTriggerIn")
end

function Q4011414Talk:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011414Talk] TriggerOut")
end

return Q4011414Talk
