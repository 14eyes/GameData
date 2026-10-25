require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110308Trigger = class("Q7110308Trigger", GadgetActorProxy)
Q7110308Trigger.defaultAlias = "Q7110308Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110308Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110308Trigger] OnPostDataPrepare")
    this = self
end

function Q7110308Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110308Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110308Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110308Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110308)
    this:DestroySelf()
end

function Q7110308Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110308Trigger] PreTriggerIn")
end

function Q7110308Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110308Trigger] LightUpTriggerIn")
end

function Q7110308Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110308Trigger] TriggerOut")
end

return Q7110308Trigger
