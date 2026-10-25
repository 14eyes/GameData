require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400802_TriggerIn = class("Q400802_TriggerIn", GadgetActorProxy)
Q400802_TriggerIn.defaultAlias = "Q400802_TriggerIn"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400802_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400802_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400802_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400802_TriggerIn] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400802_TriggerIn:TriggerIn()
    print("[MainId: 4008][Trigger: Q400802_TriggerIn] TriggerIn")
    actorMgr:GetActor("4008"):RequestInteraction(npcs.Npc1071Data.alias)
    this:DestroySelf()
end

function Q400802_TriggerIn:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400802_TriggerIn] PreTriggerIn")
end

function Q400802_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400802_TriggerIn] LightUpTriggerIn")
end

function Q400802_TriggerIn:TriggerOut()
    print("[MainId: 4008][Trigger: Q400802_TriggerIn] TriggerOut")
end

return Q400802_TriggerIn
