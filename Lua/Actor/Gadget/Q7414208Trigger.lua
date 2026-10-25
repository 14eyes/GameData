require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414208Trigger = class("Q7414208Trigger", GadgetActorProxy)
Q7414208Trigger.defaultAlias = "Q7414208Trigger"
local Q74142ClientConfig = require("Quest/Client/Q74142ClientConfig")

local this
local subIDs = Q74142ClientConfig.SubIDs
local npcs = Q74142ClientConfig.Npcs
local points = Q74142ClientConfig.Points
local datas = Q74142ClientConfig.Datas

function Q7414208Trigger:OnPostDataPrepare()
    print("[MainId: 74142][Trigger: Q7414208Trigger] OnPostDataPrepare")
    this = self
end

function Q7414208Trigger:OnPostComponentPrepare()
    print("[MainId: 74142][Trigger: Q7414208Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414208Trigger:TriggerIn()
    print("[MainId: 74142][Trigger: Q7414208Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414208)
    this:DestroySelf()
end

function Q7414208Trigger:PreTriggerIn()
    print("[MainId: 74142][Trigger: Q7414208Trigger] PreTriggerIn")
end

function Q7414208Trigger:LightUpTriggerIn()
    print("[MainId: 74142][Trigger: Q7414208Trigger] LightUpTriggerIn")
end

function Q7414208Trigger:TriggerOut()
    print("[MainId: 74142][Trigger: Q7414208Trigger] TriggerOut")
end

return Q7414208Trigger
