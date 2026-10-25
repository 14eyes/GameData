require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400215Trigger = class("Q7400215Trigger", GadgetActorProxy)
Q7400215Trigger.defaultAlias = "Q7400215Trigger"
local Q74002ClientConfig = require("Quest/Client/Q74002ClientConfig")

local this
local subIDs = Q74002ClientConfig.SubIDs
local npcs = Q74002ClientConfig.Npcs
local points = Q74002ClientConfig.Points
local datas = Q74002ClientConfig.Datas

function Q7400215Trigger:OnPostDataPrepare()
    print("[MainId: 74002][Trigger: Q7400215Trigger] OnPostDataPrepare")
    this = self
end

function Q7400215Trigger:OnPostComponentPrepare()
    print("[MainId: 74002][Trigger: Q7400215Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400215Trigger:TriggerIn()
    print("[MainId: 74002][Trigger: Q7400215Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400215)
    this:DestroySelf()
end

function Q7400215Trigger:PreTriggerIn()
    print("[MainId: 74002][Trigger: Q7400215Trigger] PreTriggerIn")
end

function Q7400215Trigger:LightUpTriggerIn()
    print("[MainId: 74002][Trigger: Q7400215Trigger] LightUpTriggerIn")
end

function Q7400215Trigger:TriggerOut()
    print("[MainId: 74002][Trigger: Q7400215Trigger] TriggerOut")
end

return Q7400215Trigger
