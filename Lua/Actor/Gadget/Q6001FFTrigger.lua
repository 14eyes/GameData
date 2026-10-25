require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q6001FFTrigger = class("Q6001FFTrigger", GadgetActorProxy)
Q6001FFTrigger.defaultAlias = "Q6001FFTrigger"
local Q6001ClientConfig = require("Quest/Client/Q6001ClientConfig")

local this
local subIDs = Q6001ClientConfig.SubIDs
local datas = Q6001ClientConfig.Datas
local npcs = Q6001ClientConfig.Npcs
local points = Q6001ClientConfig.Points

function Q6001FFTrigger:OnPostDataPrepare()
    print("Q6001FFTrigger - OnPostDataPrepare")
    this = self
end

function Q6001FFTrigger:OnPostComponentPrepare()
    print("Q6001FFTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6001)
end

function Q6001FFTrigger:TriggerIn()
    print("Q6001FFTrigger - TriggerIn")
    actorMgr:GetActor("6001"):TransmitPlayerWithQuestIdByData(600105, 1, datas.TransmitData_600105, nil, nil, nil)
    this:DestroySelf()
end

function Q6001FFTrigger:PreTriggerIn()
    print("Q6001FFTrigger - PreTriggerIn")
end

function Q6001FFTrigger:LightUpTriggerIn()
    print("Q6001FFTrigger - LightUpTriggerIn")
end

function Q6001FFTrigger:TriggerOut()
    print("Q6001FFTrigger - TriggerOut")
end

return Q6001FFTrigger
