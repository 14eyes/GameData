require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401011_TriggerIn_2 = class("Q401011_TriggerIn_2", GadgetActorProxy)
Q401011_TriggerIn_2.defaultAlias = "Q401011_TriggerIn_2"
local Q4010ClientConfig = require("Quest/Client/Q4010ClientConfig")

local this
local subIDs = Q4010ClientConfig.SubIDs
local npcs = Q4010ClientConfig.Npcs
local points = Q4010ClientConfig.Points
local datas = Q4010ClientConfig.Datas

function Q401011_TriggerIn_2:OnPostDataPrepare()
    print("[MainId: 4010][Trigger: Q401011_TriggerIn_2] OnPostDataPrepare")
    this = self
end

function Q401011_TriggerIn_2:OnPostComponentPrepare()
    print("[MainId: 4010][Trigger: Q401011_TriggerIn_2] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401011_TriggerIn_2:TriggerIn()
    print("[MainId: 4010][Trigger: Q401011_TriggerIn_2] TriggerIn")
end

function Q401011_TriggerIn_2:PreTriggerIn()
    print("[MainId: 4010][Trigger: Q401011_TriggerIn_2] PreTriggerIn")
end

function Q401011_TriggerIn_2:LightUpTriggerIn()
    print("[MainId: 4010][Trigger: Q401011_TriggerIn_2] LightUpTriggerIn")
end

function Q401011_TriggerIn_2:TriggerOut()
    print("[MainId: 4010][Trigger: Q401011_TriggerIn_2] TriggerOut")
    globalActor:LeaveAllWeather()
    this:DestroySelf()
end

return Q401011_TriggerIn_2
