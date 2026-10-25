require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q24003TriggerClocktest02 = class("Q24003TriggerClocktest02", GadgetActorProxy)
Q24003TriggerClocktest02.defaultAlias = "Q24003TriggerClocktest02"
local Q24003ClientConfig = require("Quest/Client/Q24003ClientConfig")

local this
local subIDs = Q24003ClientConfig.SubIDs
local npcs = Q24003ClientConfig.Npcs
local points = Q24003ClientConfig.Points
local datas = Q24003ClientConfig.Datas

function Q24003TriggerClocktest02:OnPostDataPrepare()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest02] OnPostDataPrepare")
    this = self
end

function Q24003TriggerClocktest02:OnPostComponentPrepare()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest02] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q24003TriggerClocktest02:TriggerIn()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest02] TriggerIn")
    actorMgr:GetActor("24003"):CreateQuestNpcById(2400305, nil, 1)
    this:DestroySelf()
end

function Q24003TriggerClocktest02:PreTriggerIn()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest02] PreTriggerIn")
end

function Q24003TriggerClocktest02:LightUpTriggerIn()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest02] LightUpTriggerIn")
end

function Q24003TriggerClocktest02:TriggerOut()
    print("[MainId: 24003][Trigger: Q24003TriggerClocktest02] TriggerOut")
end

return Q24003TriggerClocktest02
