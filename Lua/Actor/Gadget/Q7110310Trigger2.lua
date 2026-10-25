require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110310Trigger2 = class("Q7110310Trigger2", GadgetActorProxy)
Q7110310Trigger2.defaultAlias = "Q7110310Trigger2"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110310Trigger2:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110310Trigger2] OnPostDataPrepare")
    this = self
end

function Q7110310Trigger2:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110310Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110310Trigger2:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110310Trigger2] TriggerIn")
    actorMgr:GetActor("71103"):NarratorOnlyTaskByData(datas.C7110310, nil, 71103)
    this:DestroySelf()
end

function Q7110310Trigger2:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110310Trigger2] PreTriggerIn")
end

function Q7110310Trigger2:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110310Trigger2] LightUpTriggerIn")
end

function Q7110310Trigger2:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110310Trigger2] TriggerOut")
end

return Q7110310Trigger2
