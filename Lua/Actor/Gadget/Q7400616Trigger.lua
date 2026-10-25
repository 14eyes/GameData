require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400616Trigger = class("Q7400616Trigger", GadgetActorProxy)
Q7400616Trigger.defaultAlias = "Q7400616Trigger"
local Q74006ClientConfig = require("Quest/Client/Q74006ClientConfig")

local this
local subIDs = Q74006ClientConfig.SubIDs
local npcs = Q74006ClientConfig.Npcs
local points = Q74006ClientConfig.Points
local datas = Q74006ClientConfig.Datas

function Q7400616Trigger:OnPostDataPrepare()
    print("[MainId: 74006][Trigger: Q7400616Trigger] OnPostDataPrepare")
    this = self
end

function Q7400616Trigger:OnPostComponentPrepare()
    print("[MainId: 74006][Trigger: Q7400616Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400616Trigger:TriggerIn()
    print("[MainId: 74006][Trigger: Q7400616Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400616)
    this:DestroySelf()
end

function Q7400616Trigger:PreTriggerIn()
    print("[MainId: 74006][Trigger: Q7400616Trigger] PreTriggerIn")
end

function Q7400616Trigger:LightUpTriggerIn()
    print("[MainId: 74006][Trigger: Q7400616Trigger] LightUpTriggerIn")
end

function Q7400616Trigger:TriggerOut()
    print("[MainId: 74006][Trigger: Q7400616Trigger] TriggerOut")
end

return Q7400616Trigger
