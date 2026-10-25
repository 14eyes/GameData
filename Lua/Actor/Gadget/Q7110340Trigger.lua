require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110340Trigger = class("Q7110340Trigger", GadgetActorProxy)
Q7110340Trigger.defaultAlias = "Q7110340Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110340Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110340Trigger] OnPostDataPrepare")
    this = self
end

function Q7110340Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110340Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7110340Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110340Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110340)
    this:DestroySelf()
end

function Q7110340Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110340Trigger] PreTriggerIn")
end

function Q7110340Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110340Trigger] LightUpTriggerIn")
end

function Q7110340Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110340Trigger] TriggerOut")
end

return Q7110340Trigger
