require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110316Trigger = class("Q7110316Trigger", GadgetActorProxy)
Q7110316Trigger.defaultAlias = "Q7110316Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110316Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110316Trigger] OnPostDataPrepare")
    this = self
end

function Q7110316Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110316Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110316Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110316Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110316)
    this:DestroySelf()
end

function Q7110316Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110316Trigger] PreTriggerIn")
end

function Q7110316Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110316Trigger] LightUpTriggerIn")
end

function Q7110316Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110316Trigger] TriggerOut")
end

return Q7110316Trigger
