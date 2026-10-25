require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400221Trigger = class("Q7400221Trigger", GadgetActorProxy)
Q7400221Trigger.defaultAlias = "Q7400221Trigger"
local Q74002ClientConfig = require("Quest/Client/Q74002ClientConfig")

local this
local subIDs = Q74002ClientConfig.SubIDs
local npcs = Q74002ClientConfig.Npcs
local points = Q74002ClientConfig.Points
local datas = Q74002ClientConfig.Datas

function Q7400221Trigger:OnPostDataPrepare()
    print("[MainId: 74002][Trigger: Q7400221Trigger] OnPostDataPrepare")
    this = self
end

function Q7400221Trigger:OnPostComponentPrepare()
    print("[MainId: 74002][Trigger: Q7400221Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400221Trigger:TriggerIn()
    print("[MainId: 74002][Trigger: Q7400221Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400221)
    this:DestroySelf()
end

function Q7400221Trigger:PreTriggerIn()
    print("[MainId: 74002][Trigger: Q7400221Trigger] PreTriggerIn")
end

function Q7400221Trigger:LightUpTriggerIn()
    print("[MainId: 74002][Trigger: Q7400221Trigger] LightUpTriggerIn")
end

function Q7400221Trigger:TriggerOut()
    print("[MainId: 74002][Trigger: Q7400221Trigger] TriggerOut")
end

return Q7400221Trigger
