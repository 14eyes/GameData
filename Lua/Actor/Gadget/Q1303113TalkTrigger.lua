require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1303113TalkTrigger = class("Q1303113TalkTrigger", GadgetActorProxy)
Q1303113TalkTrigger.defaultAlias = "Q1303113TalkTrigger"
local Q13031ClientConfig = require("Quest/Client/Q13031ClientConfig")

local this
local subIDs = Q13031ClientConfig.SubIDs
local npcs = Q13031ClientConfig.Npcs
local points = Q13031ClientConfig.Points
local datas = Q13031ClientConfig.Datas

function Q1303113TalkTrigger:OnPostDataPrepare()
    print("[MainId: 13031][Trigger: Q1303113TalkTrigger] OnPostDataPrepare")
    this = self
end

function Q1303113TalkTrigger:OnPostComponentPrepare()
    print("[MainId: 13031][Trigger: Q1303113TalkTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1303113TalkTrigger:TriggerIn()
    print("[MainId: 13031][Trigger: Q1303113TalkTrigger] TriggerIn")
    actorMgr:GetActor("13031"):RequestInteraction(npcs.Npc13261Data.alias)
    this:DestroySelf()
end

function Q1303113TalkTrigger:PreTriggerIn()
    print("[MainId: 13031][Trigger: Q1303113TalkTrigger] PreTriggerIn")
end

function Q1303113TalkTrigger:LightUpTriggerIn()
    print("[MainId: 13031][Trigger: Q1303113TalkTrigger] LightUpTriggerIn")
end

function Q1303113TalkTrigger:TriggerOut()
    print("[MainId: 13031][Trigger: Q1303113TalkTrigger] TriggerOut")
end

return Q1303113TalkTrigger
