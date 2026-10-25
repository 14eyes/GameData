require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402415Transmit = class("Q402415Transmit", GadgetActorProxy)
Q402415Transmit.defaultAlias = "Q402415Transmit"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402415Transmit:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402415Transmit] OnPostDataPrepare")
    this = self
end

function Q402415Transmit:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402415Transmit] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402415Transmit:TriggerIn()
    print("[MainId: 4024][Trigger: Q402415Transmit] TriggerIn")
end

function Q402415Transmit:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402415Transmit] PreTriggerIn")
end

function Q402415Transmit:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402415Transmit] LightUpTriggerIn")
    actorMgr:GetActor("4024"):TransmitPlayerWithTextByQuestId(402415, 1, {"QUEST_Message_Q3007"}, 2.5)
    this:DestroySelf()
end

function Q402415Transmit:TriggerOut()
    print("[MainId: 4024][Trigger: Q402415Transmit] TriggerOut")
end

return Q402415Transmit
