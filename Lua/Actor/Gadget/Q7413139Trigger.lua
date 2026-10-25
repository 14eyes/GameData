require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413139Trigger = class("Q7413139Trigger", GadgetActorProxy)
Q7413139Trigger.defaultAlias = "Q7413139Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413139Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413139Trigger] OnPostDataPrepare")
    this = self
end

function Q7413139Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413139Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413139Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413139Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7413139)
    this:DestroySelf()
end

function Q7413139Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413139Trigger] PreTriggerIn")
end

function Q7413139Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413139Trigger] LightUpTriggerIn")
end

function Q7413139Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413139Trigger] TriggerOut")
end

return Q7413139Trigger
