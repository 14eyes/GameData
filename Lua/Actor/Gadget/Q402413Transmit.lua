require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402413Transmit = class("Q402413Transmit", GadgetActorProxy)
Q402413Transmit.defaultAlias = "Q402413Transmit"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402413Transmit:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402413Transmit] OnPostDataPrepare")
    this = self
end

function Q402413Transmit:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402413Transmit] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402413Transmit:TriggerIn()
    print("[MainId: 4024][Trigger: Q402413Transmit] TriggerIn")
end

function Q402413Transmit:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402413Transmit] PreTriggerIn")
end

function Q402413Transmit:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402413Transmit] LightUpTriggerIn")
    actorMgr:GetActor("4024"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("4024"):TransmitPlayerWithQuestIdByData(402412, 1, datas.TransmitData)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402413Transmit:TriggerOut()
    print("[MainId: 4024][Trigger: Q402413Transmit] TriggerOut")
end

return Q402413Transmit
