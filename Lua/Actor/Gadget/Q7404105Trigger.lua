require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7404105Trigger = class("Q7404105Trigger", GadgetActorProxy)
Q7404105Trigger.defaultAlias = "Q7404105Trigger"
local Q74041ClientConfig = require("Quest/Client/Q74041ClientConfig")

local this
local subIDs = Q74041ClientConfig.SubIDs
local npcs = Q74041ClientConfig.Npcs
local points = Q74041ClientConfig.Points
local datas = Q74041ClientConfig.Datas

function Q7404105Trigger:OnPostDataPrepare()
    print("[MainId: 74041][Trigger: Q7404105Trigger] OnPostDataPrepare")
    this = self
end

function Q7404105Trigger:OnPostComponentPrepare()
    print("[MainId: 74041][Trigger: Q7404105Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7.5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7404105Trigger:TriggerIn()
    print("[MainId: 74041][Trigger: Q7404105Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7404105)
    this:DestroySelf()
end

function Q7404105Trigger:PreTriggerIn()
    print("[MainId: 74041][Trigger: Q7404105Trigger] PreTriggerIn")
end

function Q7404105Trigger:LightUpTriggerIn()
    print("[MainId: 74041][Trigger: Q7404105Trigger] LightUpTriggerIn")
end

function Q7404105Trigger:TriggerOut()
    print("[MainId: 74041][Trigger: Q7404105Trigger] TriggerOut")
end

return Q7404105Trigger
