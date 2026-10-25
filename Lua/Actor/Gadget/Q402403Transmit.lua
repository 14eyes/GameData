require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402403Transmit = class("Q402403Transmit", GadgetActorProxy)
Q402403Transmit.defaultAlias = "Q402403Transmit"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402403Transmit:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402403Transmit] OnPostDataPrepare")
    this = self
end

function Q402403Transmit:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402403Transmit] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402403Transmit:TriggerIn()
    print("[MainId: 4024][Trigger: Q402403Transmit] TriggerIn")
end

function Q402403Transmit:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402403Transmit] PreTriggerIn")
end

function Q402403Transmit:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402403Transmit] LightUpTriggerIn")
    local actor = actorMgr:GetActor("4024")
    actorMgr:GetActor("4024")
    actor:TransmitPlayerWithQuestIdByData(402402, 1, datas.TransmitData)
    this:DestroySelf()
end

function Q402403Transmit:TriggerOut()
    print("[MainId: 4024][Trigger: Q402403Transmit] TriggerOut")
end

return Q402403Transmit
