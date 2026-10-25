require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601922Trigger_1 = class("Q1601922Trigger_1", GadgetActorProxy)
Q1601922Trigger_1.defaultAlias = "Q1601922Trigger_1"
local Q16019ClientConfig = require("Quest/Client/Q16019ClientConfig")

local this
local subIDs = Q16019ClientConfig.SubIDs
local datas = Q16019ClientConfig.Datas
local npcs = Q16019ClientConfig.Npcs
local points = Q16019ClientConfig.Points

function Q1601922Trigger_1:OnPostDataPrepare()
    print("Q1601922Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1601922Trigger_1:OnPostComponentPrepare()
    print("Q1601922Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16019)
end

function Q1601922Trigger_1:TriggerIn()
    print("Q1601922Trigger_1 - TriggerIn")
    actorMgr:GetActor("16019"):TransmitPlayerWithQuestIdByData(1601922, 7, datas.Transmit_DC01, nil, nil, nil)
    this:DestroySelf()
end

function Q1601922Trigger_1:PreTriggerIn()
    print("Q1601922Trigger_1 - PreTriggerIn")
end

function Q1601922Trigger_1:LightUpTriggerIn()
    print("Q1601922Trigger_1 - LightUpTriggerIn")
end

function Q1601922Trigger_1:TriggerOut()
    print("Q1601922Trigger_1 - TriggerOut")
end

return Q1601922Trigger_1
