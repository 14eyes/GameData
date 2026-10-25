require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110905Trigger = class("Q7110905Trigger", GadgetActorProxy)
Q7110905Trigger.defaultAlias = "Q7110905Trigger"
local Q71109ClientConfig = require("Quest/Client/Q71109ClientConfig")

local this
local subIDs = Q71109ClientConfig.SubIDs
local npcs = Q71109ClientConfig.Npcs
local points = Q71109ClientConfig.Points
local datas = Q71109ClientConfig.Datas

function Q7110905Trigger:OnPostDataPrepare()
    print("[MainId: 71109][Trigger: Q7110905Trigger] OnPostDataPrepare")
    this = self
end

function Q7110905Trigger:OnPostComponentPrepare()
    print("[MainId: 71109][Trigger: Q7110905Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110905Trigger:TriggerIn()
    print("[MainId: 71109][Trigger: Q7110905Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110905)
    this:DestroySelf()
end

function Q7110905Trigger:PreTriggerIn()
    print("[MainId: 71109][Trigger: Q7110905Trigger] PreTriggerIn")
end

function Q7110905Trigger:LightUpTriggerIn()
    print("[MainId: 71109][Trigger: Q7110905Trigger] LightUpTriggerIn")
end

function Q7110905Trigger:TriggerOut()
    print("[MainId: 71109][Trigger: Q7110905Trigger] TriggerOut")
end

return Q7110905Trigger
