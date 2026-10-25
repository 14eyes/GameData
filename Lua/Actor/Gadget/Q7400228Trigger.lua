require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400228Trigger = class("Q7400228Trigger", GadgetActorProxy)
Q7400228Trigger.defaultAlias = "Q7400228Trigger"
local Q74002ClientConfig = require("Quest/Client/Q74002ClientConfig")

local this
local subIDs = Q74002ClientConfig.SubIDs
local npcs = Q74002ClientConfig.Npcs
local points = Q74002ClientConfig.Points
local datas = Q74002ClientConfig.Datas

function Q7400228Trigger:OnPostDataPrepare()
    print("[MainId: 74002][Trigger: Q7400228Trigger] OnPostDataPrepare")
    this = self
end

function Q7400228Trigger:OnPostComponentPrepare()
    print("[MainId: 74002][Trigger: Q7400228Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400228Trigger:TriggerIn()
    print("[MainId: 74002][Trigger: Q7400228Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400228)
    this:DestroySelf()
end

function Q7400228Trigger:PreTriggerIn()
    print("[MainId: 74002][Trigger: Q7400228Trigger] PreTriggerIn")
end

function Q7400228Trigger:LightUpTriggerIn()
    print("[MainId: 74002][Trigger: Q7400228Trigger] LightUpTriggerIn")
end

function Q7400228Trigger:TriggerOut()
    print("[MainId: 74002][Trigger: Q7400228Trigger] TriggerOut")
end

return Q7400228Trigger
