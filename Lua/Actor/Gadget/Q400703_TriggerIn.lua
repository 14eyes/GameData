require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400703_TriggerIn = class("Q400703_TriggerIn", GadgetActorProxy)
Q400703_TriggerIn.defaultAlias = "Q400703_TriggerIn"
local Q4007ClientConfig = require("Quest/Client/Q4007ClientConfig")

local this
local subIDs = Q4007ClientConfig.SubIDs
local npcs = Q4007ClientConfig.Npcs
local points = Q4007ClientConfig.Points
local datas = Q4007ClientConfig.Datas

function Q400703_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4007][Trigger: Q400703_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400703_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4007][Trigger: Q400703_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400703_TriggerIn:TriggerIn()
    print("[MainId: 4007][Trigger: Q400703_TriggerIn] TriggerIn")
    actorMgr:GetActor("4007"):RequestInteraction(npcs.Npc13535Data.alias)
    this:DestroySelf()
end

function Q400703_TriggerIn:PreTriggerIn()
    print("[MainId: 4007][Trigger: Q400703_TriggerIn] PreTriggerIn")
end

function Q400703_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4007][Trigger: Q400703_TriggerIn] LightUpTriggerIn")
end

function Q400703_TriggerIn:TriggerOut()
    print("[MainId: 4007][Trigger: Q400703_TriggerIn] TriggerOut")
end

return Q400703_TriggerIn
