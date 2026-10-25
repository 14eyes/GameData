require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110310Trigger = class("Q7110310Trigger", GadgetActorProxy)
Q7110310Trigger.defaultAlias = "Q7110310Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110310Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110310Trigger] OnPostDataPrepare")
    this = self
end

function Q7110310Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110310Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110310Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110310Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110310)
    this:DestroySelf()
end

function Q7110310Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110310Trigger] PreTriggerIn")
end

function Q7110310Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110310Trigger] LightUpTriggerIn")
end

function Q7110310Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110310Trigger] TriggerOut")
end

return Q7110310Trigger
