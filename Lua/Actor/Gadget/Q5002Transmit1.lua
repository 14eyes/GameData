require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5002Transmit1 = class("Q5002Transmit1", GadgetActorProxy)
Q5002Transmit1.defaultAlias = "Q5002Transmit1"
local Q5002ClientConfig = require("Quest/Client/Q5002ClientConfig")

local this
local subIDs = Q5002ClientConfig.SubIDs
local datas = Q5002ClientConfig.Datas
local npcs = Q5002ClientConfig.Npcs
local points = Q5002ClientConfig.Points

function Q5002Transmit1:OnPostDataPrepare()
    print("Q5002Transmit1 - OnPostDataPrepare")
    this = self
end

function Q5002Transmit1:OnPostComponentPrepare()
    print("Q5002Transmit1 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5002)
end

function Q5002Transmit1:TriggerIn()
    print("Q5002Transmit1 - TriggerIn")
    actorMgr:GetActor("5002"):TransmitPlayerWithQuestIdByData(500219, 0, datas.TransmitDataNoWord, nil, nil, nil)
    this:DestroySelf()
end

function Q5002Transmit1:PreTriggerIn()
    print("Q5002Transmit1 - PreTriggerIn")
end

function Q5002Transmit1:LightUpTriggerIn()
    print("Q5002Transmit1 - LightUpTriggerIn")
end

function Q5002Transmit1:TriggerOut()
    print("Q5002Transmit1 - TriggerOut")
end

return Q5002Transmit1
