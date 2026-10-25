require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110342Trigger = class("Q7110342Trigger", GadgetActorProxy)
Q7110342Trigger.defaultAlias = "Q7110342Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110342Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110342Trigger] OnPostDataPrepare")
    this = self
end

function Q7110342Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110342Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110342Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110342Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110342)
    this:DestroySelf()
end

function Q7110342Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110342Trigger] PreTriggerIn")
end

function Q7110342Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110342Trigger] LightUpTriggerIn")
end

function Q7110342Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110342Trigger] TriggerOut")
end

return Q7110342Trigger
