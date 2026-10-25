require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74014Trigger = class("Q74014Trigger", GadgetActorProxy)
Q74014Trigger.defaultAlias = "Q74014Trigger"
local Q74014ClientConfig = require("Quest/Client/Q74014ClientConfig")

local this
local subIDs = Q74014ClientConfig.SubIDs
local npcs = Q74014ClientConfig.Npcs
local points = Q74014ClientConfig.Points
local datas = Q74014ClientConfig.Datas

function Q74014Trigger:OnPostDataPrepare()
    print("[MainId: 74014][Trigger: Q74014Trigger] OnPostDataPrepare")
    this = self
end

function Q74014Trigger:OnPostComponentPrepare()
    print("[MainId: 74014][Trigger: Q74014Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74014Trigger:TriggerIn()
    print("[MainId: 74014][Trigger: Q74014Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7401402)
    this:DestroySelf()
end

function Q74014Trigger:PreTriggerIn()
    print("[MainId: 74014][Trigger: Q74014Trigger] PreTriggerIn")
end

function Q74014Trigger:LightUpTriggerIn()
    print("[MainId: 74014][Trigger: Q74014Trigger] LightUpTriggerIn")
end

function Q74014Trigger:TriggerOut()
    print("[MainId: 74014][Trigger: Q74014Trigger] TriggerOut")
end

return Q74014Trigger
