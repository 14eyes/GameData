require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400907_TriggerIn = class("Q400907_TriggerIn", GadgetActorProxy)
Q400907_TriggerIn.defaultAlias = "Q400907_TriggerIn"
local Q4009ClientConfig = require("Quest/Client/Q4009ClientConfig")

local this
local subIDs = Q4009ClientConfig.SubIDs
local npcs = Q4009ClientConfig.Npcs
local points = Q4009ClientConfig.Points
local datas = Q4009ClientConfig.Datas

function Q400907_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4009][Trigger: Q400907_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400907_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4009][Trigger: Q400907_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 20, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400907_TriggerIn:TriggerIn()
    print("[MainId: 4009][Trigger: Q400907_TriggerIn] TriggerIn")
    actorMgr:GetActor("4009"):RequestInteraction(npcs.Npc13477Data.alias)
    this:DestroySelf()
end

function Q400907_TriggerIn:PreTriggerIn()
    print("[MainId: 4009][Trigger: Q400907_TriggerIn] PreTriggerIn")
end

function Q400907_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4009][Trigger: Q400907_TriggerIn] LightUpTriggerIn")
end

function Q400907_TriggerIn:TriggerOut()
    print("[MainId: 4009][Trigger: Q400907_TriggerIn] TriggerOut")
end

return Q400907_TriggerIn
