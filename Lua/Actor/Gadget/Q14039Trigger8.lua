require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14039Trigger8 = class("Q14039Trigger8", GadgetActorProxy)
Q14039Trigger8.defaultAlias = "Q14039Trigger8"
local Q14039ClientConfig = require("Quest/Client/Q14039ClientConfig")

local this
local subIDs = Q14039ClientConfig.SubIDs
local npcs = Q14039ClientConfig.Npcs
local points = Q14039ClientConfig.Points
local datas = Q14039ClientConfig.Datas

function Q14039Trigger8:OnPostDataPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger8] OnPostDataPrepare")
    this = self
end

function Q14039Trigger8:OnPostComponentPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger8] OnPostComponentPrepare")
    this:AddComponentTrigger(36, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14039)
end

function Q14039Trigger8:TriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger8] TriggerIn")
    actorMgr:GetActor("14039"):RequestInteraction(npcs.Npc14115Data.alias, "", true)
    this:DestroySelf()
end

function Q14039Trigger8:PreTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger8] PreTriggerIn")
end

function Q14039Trigger8:LightUpTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger8] LightUpTriggerIn")
end

function Q14039Trigger8:TriggerOut()
    print("[MainId: 14039][Trigger: Q14039Trigger8] TriggerOut")
end

return Q14039Trigger8
