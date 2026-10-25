require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1303108TalkTrigger = class("Q1303108TalkTrigger", GadgetActorProxy)
Q1303108TalkTrigger.defaultAlias = "Q1303108TalkTrigger"
local Q13031ClientConfig = require("Quest/Client/Q13031ClientConfig")

local this
local subIDs = Q13031ClientConfig.SubIDs
local npcs = Q13031ClientConfig.Npcs
local points = Q13031ClientConfig.Points
local datas = Q13031ClientConfig.Datas

function Q1303108TalkTrigger:OnPostDataPrepare()
    print("[MainId: 13031][Trigger: Q1303108TalkTrigger] OnPostDataPrepare")
    this = self
end

function Q1303108TalkTrigger:OnPostComponentPrepare()
    print("[MainId: 13031][Trigger: Q1303108TalkTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1303108TalkTrigger:TriggerIn()
    print("[MainId: 13031][Trigger: Q1303108TalkTrigger] TriggerIn")
    actorMgr:GetActor("13031"):RequestInteraction(npcs.Npc13261Data.alias)
    this:DestroySelf()
end

function Q1303108TalkTrigger:PreTriggerIn()
    print("[MainId: 13031][Trigger: Q1303108TalkTrigger] PreTriggerIn")
end

function Q1303108TalkTrigger:LightUpTriggerIn()
    print("[MainId: 13031][Trigger: Q1303108TalkTrigger] LightUpTriggerIn")
end

function Q1303108TalkTrigger:TriggerOut()
    print("[MainId: 13031][Trigger: Q1303108TalkTrigger] TriggerOut")
end

return Q1303108TalkTrigger
