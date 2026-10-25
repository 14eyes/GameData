require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14039Trigger11 = class("Q14039Trigger11", GadgetActorProxy)
Q14039Trigger11.defaultAlias = "Q14039Trigger11"
local Q14039ClientConfig = require("Quest/Client/Q14039ClientConfig")

local this
local subIDs = Q14039ClientConfig.SubIDs
local npcs = Q14039ClientConfig.Npcs
local points = Q14039ClientConfig.Points
local datas = Q14039ClientConfig.Datas

function Q14039Trigger11:OnPostDataPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger11] OnPostDataPrepare")
    this = self
end

function Q14039Trigger11:OnPostComponentPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger11] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14039)
end

function Q14039Trigger11:TriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger11] TriggerIn")
    actorMgr:GetActor("14039"):TransmitPlayerWithQuestIdByData(1403904, 1, datas.TransmitData)
    this:DestroySelf()
end

function Q14039Trigger11:PreTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger11] PreTriggerIn")
end

function Q14039Trigger11:LightUpTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger11] LightUpTriggerIn")
end

function Q14039Trigger11:TriggerOut()
    print("[MainId: 14039][Trigger: Q14039Trigger11] TriggerOut")
end

return Q14039Trigger11
