require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400909_TriggerIn_2 = class("Q400909_TriggerIn_2", GadgetActorProxy)
Q400909_TriggerIn_2.defaultAlias = "Q400909_TriggerIn_2"
local Q4009ClientConfig = require("Quest/Client/Q4009ClientConfig")

local this
local subIDs = Q4009ClientConfig.SubIDs
local npcs = Q4009ClientConfig.Npcs
local points = Q4009ClientConfig.Points
local datas = Q4009ClientConfig.Datas

function Q400909_TriggerIn_2:OnPostDataPrepare()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn_2] OnPostDataPrepare")
    this = self
end

function Q400909_TriggerIn_2:OnPostComponentPrepare()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn_2] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(18, 50, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400909_TriggerIn_2:TriggerIn()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn_2] TriggerIn")
    this:DestroySelf()
end

function Q400909_TriggerIn_2:PreTriggerIn()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn_2] PreTriggerIn")
end

function Q400909_TriggerIn_2:LightUpTriggerIn()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn_2] LightUpTriggerIn")
    actorMgr:GetActor("4009"):RequestInteraction(npcs.Npc13477Data.alias)
end

function Q400909_TriggerIn_2:TriggerOut()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn_2] TriggerOut")
end

return Q400909_TriggerIn_2
