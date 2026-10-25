require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q24003TriggerClocktest01 = class("Q24003TriggerClocktest01", GadgetActorProxy)
Q24003TriggerClocktest01.defaultAlias = "Q24003TriggerClocktest01"
local Q24003ClientConfig = require("Quest/Client/Q24003ClientConfig")

local this
local subIDs = Q24003ClientConfig.SubIDs
local npcs = Q24003ClientConfig.Npcs
local points = Q24003ClientConfig.Points
local datas = Q24003ClientConfig.Datas

function Q24003TriggerClocktest01:OnPostDataPrepare()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest01] OnPostDataPrepare")
    this = self
end

function Q24003TriggerClocktest01:OnPostComponentPrepare()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest01] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q24003TriggerClocktest01:TriggerIn()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest01] TriggerIn")
    actorMgr:GetActor("24003"):CreateQuestNpcById(2400303, nil, 1)
    this:DestroySelf()
end

function Q24003TriggerClocktest01:PreTriggerIn()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest01] PreTriggerIn")
end

function Q24003TriggerClocktest01:LightUpTriggerIn()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest01] LightUpTriggerIn")
end

function Q24003TriggerClocktest01:TriggerOut()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest01] TriggerOut")
end

return Q24003TriggerClocktest01
