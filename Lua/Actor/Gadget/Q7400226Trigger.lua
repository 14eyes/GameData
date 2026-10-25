require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400226Trigger = class("Q7400226Trigger", GadgetActorProxy)
Q7400226Trigger.defaultAlias = "Q7400226Trigger"
local Q74002ClientConfig = require("Quest/Client/Q74002ClientConfig")

local this
local subIDs = Q74002ClientConfig.SubIDs
local npcs = Q74002ClientConfig.Npcs
local points = Q74002ClientConfig.Points
local datas = Q74002ClientConfig.Datas

function Q7400226Trigger:OnPostDataPrepare()
    print("[MainId: 74002][Trigger: Q7400226Trigger] OnPostDataPrepare")
    this = self
end

function Q7400226Trigger:OnPostComponentPrepare()
    print("[MainId: 74002][Trigger: Q7400226Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400226Trigger:TriggerIn()
    print("[MainId: 74002][Trigger: Q7400226Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400226)
    this:DestroySelf()
end

function Q7400226Trigger:PreTriggerIn()
    print("[MainId: 74002][Trigger: Q7400226Trigger] PreTriggerIn")
end

function Q7400226Trigger:LightUpTriggerIn()
    print("[MainId: 74002][Trigger: Q7400226Trigger] LightUpTriggerIn")
end

function Q7400226Trigger:TriggerOut()
    print("[MainId: 74002][Trigger: Q7400226Trigger] TriggerOut")
end

return Q7400226Trigger
