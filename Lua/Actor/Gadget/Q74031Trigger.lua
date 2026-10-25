require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74031Trigger = class("Q74031Trigger", GadgetActorProxy)
Q74031Trigger.defaultAlias = "Q74031Trigger"
local Q74031ClientConfig = require("Quest/Client/Q74031ClientConfig")

local this
local subIDs = Q74031ClientConfig.SubIDs
local npcs = Q74031ClientConfig.Npcs
local points = Q74031ClientConfig.Points
local datas = Q74031ClientConfig.Datas

function Q74031Trigger:OnPostDataPrepare()
    print("[MainId: 74031][Trigger: Q74031Trigger] OnPostDataPrepare")
    this = self
end

function Q74031Trigger:OnPostComponentPrepare()
    print("[MainId: 74031][Trigger: Q74031Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74031Trigger:TriggerIn()
    print("[MainId: 74031][Trigger: Q74031Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7403105)
    this:DestroySelf()
end

function Q74031Trigger:PreTriggerIn()
    print("[MainId: 74031][Trigger: Q74031Trigger] PreTriggerIn")
end

function Q74031Trigger:LightUpTriggerIn()
    print("[MainId: 74031][Trigger: Q74031Trigger] LightUpTriggerIn")
end

function Q74031Trigger:TriggerOut()
    print("[MainId: 74031][Trigger: Q74031Trigger] TriggerOut")
end

return Q74031Trigger
