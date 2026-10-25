require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402801Trigger2 = class("Q7402801Trigger2", GadgetActorProxy)
Q7402801Trigger2.defaultAlias = "Q7402801Trigger2"
local Q74028ClientConfig = require("Quest/Client/Q74028ClientConfig")

local this
local subIDs = Q74028ClientConfig.SubIDs
local npcs = Q74028ClientConfig.Npcs
local points = Q74028ClientConfig.Points
local datas = Q74028ClientConfig.Datas

function Q7402801Trigger2:OnPostDataPrepare()
    print("[MainId: 74028][Trigger: Q7402801Trigger2] OnPostDataPrepare")
    this = self
end

function Q7402801Trigger2:OnPostComponentPrepare()
    print("[MainId: 74028][Trigger: Q7402801Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402801Trigger2:TriggerIn()
    print("[MainId: 74028][Trigger: Q7402801Trigger2] TriggerIn")
    actorMgr:GetActor("74028"):NarratorOnlyTaskByData(datas.FindPartner, nil, 74028)
    this:DestroySelf()
end

function Q7402801Trigger2:PreTriggerIn()
    print("[MainId: 74028][Trigger: Q7402801Trigger2] PreTriggerIn")
end

function Q7402801Trigger2:LightUpTriggerIn()
    print("[MainId: 74028][Trigger: Q7402801Trigger2] LightUpTriggerIn")
end

function Q7402801Trigger2:TriggerOut()
    print("[MainId: 74028][Trigger: Q7402801Trigger2] TriggerOut")
end

return Q7402801Trigger2
