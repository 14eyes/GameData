require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110207Trigger = class("Q7110207Trigger", GadgetActorProxy)
Q7110207Trigger.defaultAlias = "Q7110207Trigger"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110207Trigger:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110207Trigger] OnPostDataPrepare")
    this = self
end

function Q7110207Trigger:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110207Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110207Trigger:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110207Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110207)
    this:DestroySelf()
end

function Q7110207Trigger:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110207Trigger] PreTriggerIn")
end

function Q7110207Trigger:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110207Trigger] LightUpTriggerIn")
end

function Q7110207Trigger:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110207Trigger] TriggerOut")
end

return Q7110207Trigger
