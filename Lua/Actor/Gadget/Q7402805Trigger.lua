require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402805Trigger = class("Q7402805Trigger", GadgetActorProxy)
Q7402805Trigger.defaultAlias = "Q7402805Trigger"
local Q74028ClientConfig = require("Quest/Client/Q74028ClientConfig")

local this
local subIDs = Q74028ClientConfig.SubIDs
local npcs = Q74028ClientConfig.Npcs
local points = Q74028ClientConfig.Points
local datas = Q74028ClientConfig.Datas

function Q7402805Trigger:OnPostDataPrepare()
    print("[MainId: 74028][Trigger: Q7402805Trigger] OnPostDataPrepare")
    this = self
end

function Q7402805Trigger:OnPostComponentPrepare()
    print("[MainId: 74028][Trigger: Q7402805Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402805Trigger:TriggerIn()
    print("[MainId: 74028][Trigger: Q7402805Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402805)
    this:DestroySelf()
end

function Q7402805Trigger:PreTriggerIn()
    print("[MainId: 74028][Trigger: Q7402805Trigger] PreTriggerIn")
end

function Q7402805Trigger:LightUpTriggerIn()
    print("[MainId: 74028][Trigger: Q7402805Trigger] LightUpTriggerIn")
end

function Q7402805Trigger:TriggerOut()
    print("[MainId: 74028][Trigger: Q7402805Trigger] TriggerOut")
end

return Q7402805Trigger
