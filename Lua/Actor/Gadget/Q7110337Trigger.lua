require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110337Trigger = class("Q7110337Trigger", GadgetActorProxy)
Q7110337Trigger.defaultAlias = "Q7110337Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110337Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110337Trigger] OnPostDataPrepare")
    this = self
end

function Q7110337Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110337Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110337Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110337Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110337)
    this:DestroySelf()
end

function Q7110337Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110337Trigger] PreTriggerIn")
end

function Q7110337Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110337Trigger] LightUpTriggerIn")
end

function Q7110337Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110337Trigger] TriggerOut")
end

return Q7110337Trigger
