require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1204513Tigger = class("Q1204513Tigger", GadgetActorProxy)
Q1204513Tigger.defaultAlias = "Q1204513Tigger"
local Q12045ClientConfig = require("Quest/Client/Q12045ClientConfig")

local this
local subIDs = Q12045ClientConfig.SubIDs
local datas = Q12045ClientConfig.Datas
local npcs = Q12045ClientConfig.Npcs
local points = Q12045ClientConfig.Points

function Q1204513Tigger:OnPostDataPrepare()
    print("Q1204513Tigger - OnPostDataPrepare")
    this = self
end

function Q1204513Tigger:OnPostComponentPrepare()
    print("Q1204513Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 12045)
end

function Q1204513Tigger:TriggerIn()
    print("Q1204513Tigger - TriggerIn")
    actorMgr:GetActor("12045"):TransmitPlayerWithQuestIdByData(1204513, 2, datas.TransmitData01, nil, nil, nil)
    this:DestroySelf()
end

function Q1204513Tigger:PreTriggerIn()
    print("Q1204513Tigger - PreTriggerIn")
end

function Q1204513Tigger:LightUpTriggerIn()
    print("Q1204513Tigger - LightUpTriggerIn")
end

function Q1204513Tigger:TriggerOut()
    print("Q1204513Tigger - TriggerOut")
end

return Q1204513Tigger
