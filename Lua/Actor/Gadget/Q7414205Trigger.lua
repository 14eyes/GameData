require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414205Trigger = class("Q7414205Trigger", GadgetActorProxy)
Q7414205Trigger.defaultAlias = "Q7414205Trigger"
local Q74142ClientConfig = require("Quest/Client/Q74142ClientConfig")

local this
local subIDs = Q74142ClientConfig.SubIDs
local npcs = Q74142ClientConfig.Npcs
local points = Q74142ClientConfig.Points
local datas = Q74142ClientConfig.Datas

function Q7414205Trigger:OnPostDataPrepare()
    print("[MainId: 74142][Trigger: Q7414205Trigger] OnPostDataPrepare")
    this = self
end

function Q7414205Trigger:OnPostComponentPrepare()
    print("[MainId: 74142][Trigger: Q7414205Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414205Trigger:TriggerIn()
    print("[MainId: 74142][Trigger: Q7414205Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414205)
    this:DestroySelf()
end

function Q7414205Trigger:PreTriggerIn()
    print("[MainId: 74142][Trigger: Q7414205Trigger] PreTriggerIn")
end

function Q7414205Trigger:LightUpTriggerIn()
    print("[MainId: 74142][Trigger: Q7414205Trigger] LightUpTriggerIn")
end

function Q7414205Trigger:TriggerOut()
    print("[MainId: 74142][Trigger: Q7414205Trigger] TriggerOut")
end

return Q7414205Trigger
