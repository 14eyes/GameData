require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7404111Trigger = class("Q7404111Trigger", GadgetActorProxy)
Q7404111Trigger.defaultAlias = "Q7404111Trigger"
local Q74041ClientConfig = require("Quest/Client/Q74041ClientConfig")

local this
local subIDs = Q74041ClientConfig.SubIDs
local npcs = Q74041ClientConfig.Npcs
local points = Q74041ClientConfig.Points
local datas = Q74041ClientConfig.Datas

function Q7404111Trigger:OnPostDataPrepare()
    print("[MainId: 74041][Trigger: Q7404111Trigger] OnPostDataPrepare")
    this = self
end

function Q7404111Trigger:OnPostComponentPrepare()
    print("[MainId: 74041][Trigger: Q7404111Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7404111Trigger:TriggerIn()
    print("[MainId: 74041][Trigger: Q7404111Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7404111)
    this:DestroySelf()
end

function Q7404111Trigger:PreTriggerIn()
    print("[MainId: 74041][Trigger: Q7404111Trigger] PreTriggerIn")
end

function Q7404111Trigger:LightUpTriggerIn()
    print("[MainId: 74041][Trigger: Q7404111Trigger] LightUpTriggerIn")
end

function Q7404111Trigger:TriggerOut()
    print("[MainId: 74041][Trigger: Q7404111Trigger] TriggerOut")
end

return Q7404111Trigger
