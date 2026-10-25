require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110325Trigger = class("Q7110325Trigger", GadgetActorProxy)
Q7110325Trigger.defaultAlias = "Q7110325Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110325Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110325Trigger] OnPostDataPrepare")
    this = self
end

function Q7110325Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110325Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110325Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110325Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110325)
    this:DestroySelf()
end

function Q7110325Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110325Trigger] PreTriggerIn")
end

function Q7110325Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110325Trigger] LightUpTriggerIn")
end

function Q7110325Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110325Trigger] TriggerOut")
end

return Q7110325Trigger
