require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400709_TriggerIn = class("Q400709_TriggerIn", GadgetActorProxy)
Q400709_TriggerIn.defaultAlias = "Q400709_TriggerIn"
local Q4007ClientConfig = require("Quest/Client/Q4007ClientConfig")

local this
local subIDs = Q4007ClientConfig.SubIDs
local npcs = Q4007ClientConfig.Npcs
local points = Q4007ClientConfig.Points
local datas = Q4007ClientConfig.Datas

function Q400709_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4007][Trigger: Q400709_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400709_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4007][Trigger: Q400709_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 30, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400709_TriggerIn:TriggerIn()
    print("[MainId: 4007][Trigger: Q400709_TriggerIn] TriggerIn")
    actorMgr:GetActor("4007"):RequestInteraction(npcs.Npc13533Data.alias, "", true)
    this:DestroySelf()
end

function Q400709_TriggerIn:PreTriggerIn()
    print("[MainId: 4007][Trigger: Q400709_TriggerIn] PreTriggerIn")
end

function Q400709_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4007][Trigger: Q400709_TriggerIn] LightUpTriggerIn")
end

function Q400709_TriggerIn:TriggerOut()
    print("[MainId: 4007][Trigger: Q400709_TriggerIn] TriggerOut")
end

return Q400709_TriggerIn
