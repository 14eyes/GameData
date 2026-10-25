require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7416420Trigger = class("Q7416420Trigger", GadgetActorProxy)
Q7416420Trigger.defaultAlias = "Q7416420Trigger"
local Q74164ClientConfig = require("Quest/Client/Q74164ClientConfig")

local this
local subIDs = Q74164ClientConfig.SubIDs
local npcs = Q74164ClientConfig.Npcs
local datas = Q74164ClientConfig.Datas

function Q7416420Trigger:OnPostDataPrepare()
    print("[MainId: 74164][Trigger: Q7416420Trigger] OnPostDataPrepare")
    this = self
end

function Q7416420Trigger:OnPostComponentPrepare()
    print("[MainId: 74164][Trigger: Q7416420Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(11, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7416420Trigger:TriggerIn()
    print("[MainId: 74164][Trigger: Q7416420Trigger] TriggerIn")
    actorMgr:GetActor("74164"):NarratorOnlyTaskByData(datas.Narrator_7416410)
    this:DestroySelf()
end

function Q7416420Trigger:PreTriggerIn()
    print("[MainId: 74164][Trigger: Q7416420Trigger] PreTriggerIn")
end

function Q7416420Trigger:LightUpTriggerIn()
    print("[MainId: 74164][Trigger: Q7416420Trigger] LightUpTriggerIn")
end

function Q7416420Trigger:TriggerOut()
    print("[MainId: 74164][Trigger: Q7416420Trigger] TriggerOut")
end

return Q7416420Trigger
