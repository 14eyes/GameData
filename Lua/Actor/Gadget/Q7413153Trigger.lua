require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413153Trigger = class("Q7413153Trigger", GadgetActorProxy)
Q7413153Trigger.defaultAlias = "Q7413153Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413153Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413153Trigger] OnPostDataPrepare")
    this = self
end

function Q7413153Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413153Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413153Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413153Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7413153)
    this:DestroySelf()
end

function Q7413153Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413153Trigger] PreTriggerIn")
end

function Q7413153Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413153Trigger] LightUpTriggerIn")
end

function Q7413153Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413153Trigger] TriggerOut")
end

return Q7413153Trigger
