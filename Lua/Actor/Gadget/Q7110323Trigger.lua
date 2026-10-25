require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110323Trigger = class("Q7110323Trigger", GadgetActorProxy)
Q7110323Trigger.defaultAlias = "Q7110323Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110323Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110323Trigger] OnPostDataPrepare")
    this = self
end

function Q7110323Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110323Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110323Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110323Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110323)
    this:DestroySelf()
end

function Q7110323Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110323Trigger] PreTriggerIn")
end

function Q7110323Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110323Trigger] LightUpTriggerIn")
end

function Q7110323Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110323Trigger] TriggerOut")
end

return Q7110323Trigger
