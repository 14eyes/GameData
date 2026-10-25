require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402427Transmit = class("Q402427Transmit", GadgetActorProxy)
Q402427Transmit.defaultAlias = "Q402427Transmit"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402427Transmit:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402427Transmit] OnPostDataPrepare")
    this = self
end

function Q402427Transmit:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402427Transmit] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402427Transmit:TriggerIn()
    print("[MainId: 4024][Trigger: Q402427Transmit] TriggerIn")
end

function Q402427Transmit:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402427Transmit] PreTriggerIn")
end

function Q402427Transmit:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402427Transmit] LightUpTriggerIn")
    actorMgr:GetActor("4024"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("4024"):TransmitPlayerWithQuestIdByData(402418, 1, datas.TransmitData)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402427Transmit:TriggerOut()
    print("[MainId: 4024][Trigger: Q402427Transmit] TriggerOut")
end

return Q402427Transmit
