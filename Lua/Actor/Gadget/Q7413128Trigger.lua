require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413128Trigger = class("Q7413128Trigger", GadgetActorProxy)
Q7413128Trigger.defaultAlias = "Q7413128Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413128Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413128Trigger] OnPostDataPrepare")
    this = self
end

function Q7413128Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413128Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413128Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413128Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7413128)
    this:DestroySelf()
end

function Q7413128Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413128Trigger] PreTriggerIn")
end

function Q7413128Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413128Trigger] LightUpTriggerIn")
end

function Q7413128Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413128Trigger] TriggerOut")
end

return Q7413128Trigger
