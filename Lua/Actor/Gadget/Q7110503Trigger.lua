require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110503Trigger = class("Q7110503Trigger", GadgetActorProxy)
Q7110503Trigger.defaultAlias = "Q7110503Trigger"
local Q71105ClientConfig = require("Quest/Client/Q71105ClientConfig")

local this
local subIDs = Q71105ClientConfig.SubIDs
local npcs = Q71105ClientConfig.Npcs
local points = Q71105ClientConfig.Points
local datas = Q71105ClientConfig.Datas

function Q7110503Trigger:OnPostDataPrepare()
    print("[MainId: 71105][Trigger: Q7110503Trigger] OnPostDataPrepare")
    this = self
end

function Q7110503Trigger:OnPostComponentPrepare()
    print("[MainId: 71105][Trigger: Q7110503Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110503Trigger:TriggerIn()
    print("[MainId: 71105][Trigger: Q7110503Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110503)
    this:DestroySelf()
end

function Q7110503Trigger:PreTriggerIn()
    print("[MainId: 71105][Trigger: Q7110503Trigger] PreTriggerIn")
end

function Q7110503Trigger:LightUpTriggerIn()
    print("[MainId: 71105][Trigger: Q7110503Trigger] LightUpTriggerIn")
end

function Q7110503Trigger:TriggerOut()
    print("[MainId: 71105][Trigger: Q7110503Trigger] TriggerOut")
end

return Q7110503Trigger
