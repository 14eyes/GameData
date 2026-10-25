require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400815_TriggerIn = class("Q400815_TriggerIn", GadgetActorProxy)
Q400815_TriggerIn.defaultAlias = "Q400815_TriggerIn"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400815_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400815_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400815_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400815_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 30, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400815_TriggerIn:TriggerIn()
    print("[MainId: 4008][Trigger: Q400815_TriggerIn] TriggerIn")
    actorMgr:GetActor("4008"):RequestInteraction(npcs.Npc13477Data.alias, "", true)
    this:DestroySelf()
end

function Q400815_TriggerIn:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400815_TriggerIn] PreTriggerIn")
end

function Q400815_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400815_TriggerIn] LightUpTriggerIn")
end

function Q400815_TriggerIn:TriggerOut()
    print("[MainId: 4008][Trigger: Q400815_TriggerIn] TriggerOut")
end

return Q400815_TriggerIn
