require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14039Trigger10 = class("Q14039Trigger10", GadgetActorProxy)
Q14039Trigger10.defaultAlias = "Q14039Trigger10"
local Q14039ClientConfig = require("Quest/Client/Q14039ClientConfig")

local this
local subIDs = Q14039ClientConfig.SubIDs
local npcs = Q14039ClientConfig.Npcs
local points = Q14039ClientConfig.Points
local datas = Q14039ClientConfig.Datas

function Q14039Trigger10:OnPostDataPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger10] OnPostDataPrepare")
    this = self
end

function Q14039Trigger10:OnPostComponentPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger10] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14039)
end

function Q14039Trigger10:TriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger10] TriggerIn")
    actorMgr:GetActor("14039"):CreateSpeechBubbleTask(npcs.Npc14261Data.id, 140399907, 2, true, 3, 4, true, false)
    this:DestroySelf()
end

function Q14039Trigger10:PreTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger10] PreTriggerIn")
end

function Q14039Trigger10:LightUpTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger10] LightUpTriggerIn")
end

function Q14039Trigger10:TriggerOut()
    print("[MainId: 14039][Trigger: Q14039Trigger10] TriggerOut")
end

return Q14039Trigger10
