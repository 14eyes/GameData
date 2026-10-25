require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402411Transmit = class("Q402411Transmit", GadgetActorProxy)
Q402411Transmit.defaultAlias = "Q402411Transmit"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402411Transmit:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402411Transmit] OnPostDataPrepare")
    this = self
end

function Q402411Transmit:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402411Transmit] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402411Transmit:TriggerIn()
    print("[MainId: 4024][Trigger: Q402411Transmit] TriggerIn")
end

function Q402411Transmit:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402411Transmit] PreTriggerIn")
end

function Q402411Transmit:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402411Transmit] LightUpTriggerIn")
    actorMgr:GetActor("4024"):TransmitPlayerWithQuestIdByData(402422, 1, datas.TransmitData)
    this:DestroySelf()
end

function Q402411Transmit:TriggerOut()
    print("[MainId: 4024][Trigger: Q402411Transmit] TriggerOut")
end

return Q402411Transmit
