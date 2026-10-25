require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7403907Trigger = class("Q7403907Trigger", GadgetActorProxy)
Q7403907Trigger.defaultAlias = "Q7403907Trigger"
local Q74039ClientConfig = require("Quest/Client/Q74039ClientConfig")

local this
local subIDs = Q74039ClientConfig.SubIDs
local npcs = Q74039ClientConfig.Npcs
local datas = Q74039ClientConfig.Datas

function Q7403907Trigger:OnPostDataPrepare()
    print("[MainId: 74039][Trigger: Q7403907Trigger] OnPostDataPrepare")
    this = self
end

function Q7403907Trigger:OnPostComponentPrepare()
    print("[MainId: 74039][Trigger: Q7403907Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7403907Trigger:TriggerIn()
    print("[MainId: 74039][Trigger: Q7403907Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7403907)
    this:DestroySelf()
end

function Q7403907Trigger:PreTriggerIn()
    print("[MainId: 74039][Trigger: Q7403907Trigger] PreTriggerIn")
end

function Q7403907Trigger:LightUpTriggerIn()
    print("[MainId: 74039][Trigger: Q7403907Trigger] LightUpTriggerIn")
end

function Q7403907Trigger:TriggerOut()
    print("[MainId: 74039][Trigger: Q7403907Trigger] TriggerOut")
end

return Q7403907Trigger
