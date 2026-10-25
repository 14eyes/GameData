require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414113Trigger = class("Q7414113Trigger", GadgetActorProxy)
Q7414113Trigger.defaultAlias = "Q7414113Trigger"
local Q74141ClientConfig = require("Quest/Client/Q74141ClientConfig")

local this
local subIDs = Q74141ClientConfig.SubIDs
local npcs = Q74141ClientConfig.Npcs
local points = Q74141ClientConfig.Points
local datas = Q74141ClientConfig.Datas

function Q7414113Trigger:OnPostDataPrepare()
    print("[MainId: 74141][Trigger: Q7414113Trigger] OnPostDataPrepare")
    this = self
end

function Q7414113Trigger:OnPostComponentPrepare()
    print("[MainId: 74141][Trigger: Q7414113Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(400, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414113Trigger:TriggerIn()
    print("[MainId: 74141][Trigger: Q7414113Trigger] TriggerIn")
end

function Q7414113Trigger:PreTriggerIn()
    print("[MainId: 74141][Trigger: Q7414113Trigger] PreTriggerIn")
end

function Q7414113Trigger:LightUpTriggerIn()
    print("[MainId: 74141][Trigger: Q7414113Trigger] LightUpTriggerIn")
end

function Q7414113Trigger:TriggerOut()
    print("[MainId: 74141][Trigger: Q7414113Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7414113)
    this:DestroySelf()
end

return Q7414113Trigger
