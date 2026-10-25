require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14037Trigger8 = class("Q14037Trigger8", GadgetActorProxy)
Q14037Trigger8.defaultAlias = "Q14037Trigger8"
local Q14037ClientConfig = require("Quest/Client/Q14037ClientConfig")

local this
local subIDs = Q14037ClientConfig.SubIDs
local npcs = Q14037ClientConfig.Npcs
local points = Q14037ClientConfig.Points
local datas = Q14037ClientConfig.Datas

function Q14037Trigger8:OnPostDataPrepare()
    print("[MainId: 14037][Trigger: Q14037Trigger8] OnPostDataPrepare")
    this = self
end

function Q14037Trigger8:OnPostComponentPrepare()
    print("[MainId: 14037][Trigger: Q14037Trigger8] OnPostComponentPrepare")
    this:AddComponentTrigger(24, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14037)
end

function Q14037Trigger8:TriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger8] TriggerIn")
    actorMgr:GetActor("14037"):RequestInteraction(npcs.Npc14115Data.alias, "", true)
    this:DestroySelf()
end

function Q14037Trigger8:PreTriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger8] PreTriggerIn")
end

function Q14037Trigger8:LightUpTriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger8] LightUpTriggerIn")
end

function Q14037Trigger8:TriggerOut()
    print("[MainId: 14037][Trigger: Q14037Trigger8] TriggerOut")
end

return Q14037Trigger8
