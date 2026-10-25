require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401908_TriggerOut = class("Q401908_TriggerOut", GadgetActorProxy)
Q401908_TriggerOut.defaultAlias = "Q401908_TriggerOut"
local Q4019ClientConfig = require("Quest/Client/Q4019ClientConfig")

local this
local subIDs = Q4019ClientConfig.SubIDs
local npcs = Q4019ClientConfig.Npcs
local points = Q4019ClientConfig.Points
local datas = Q4019ClientConfig.Datas

function Q401908_TriggerOut:OnPostDataPrepare()
    print("[MainId: 4019][Trigger: Q401908_TriggerOut] OnPostDataPrepare")
    this = self
end

function Q401908_TriggerOut:OnPostComponentPrepare()
    print("[MainId: 4019][Trigger: Q401908_TriggerOut] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401908_TriggerOut:TriggerIn()
    print("[MainId: 4019][Trigger: Q401908_TriggerOut] TriggerIn")
end

function Q401908_TriggerOut:PreTriggerIn()
    print("[MainId: 4019][Trigger: Q401908_TriggerOut] PreTriggerIn")
end

function Q401908_TriggerOut:LightUpTriggerIn()
    print("[MainId: 4019][Trigger: Q401908_TriggerOut] LightUpTriggerIn")
end

function Q401908_TriggerOut:TriggerOut()
    print("[MainId: 4019][Trigger: Q401908_TriggerOut] TriggerOut")
    globalActor:LeaveAllWeather()
    actorUtils.FinishQuestID(false, 401908)
    this:DestroySelf()
end

return Q401908_TriggerOut
