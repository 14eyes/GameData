require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5002Transmit2 = class("Q5002Transmit2", GadgetActorProxy)
Q5002Transmit2.defaultAlias = "Q5002Transmit2"
local Q5002ClientConfig = require("Quest/Client/Q5002ClientConfig")

local this
local subIDs = Q5002ClientConfig.SubIDs
local datas = Q5002ClientConfig.Datas
local npcs = Q5002ClientConfig.Npcs
local points = Q5002ClientConfig.Points

function Q5002Transmit2:OnPostDataPrepare()
    print("Q5002Transmit2 - OnPostDataPrepare")
    this = self
end

function Q5002Transmit2:OnPostComponentPrepare()
    print("Q5002Transmit2 - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5002)
end

function Q5002Transmit2:TriggerIn()
    print("Q5002Transmit2 - TriggerIn")
    actorMgr:GetActor("5002"):TransmitPlayerWithQuestIdByData(500216, 1, datas.TransmitDataOnsen, nil, nil, nil)
    this:DestroySelf()
end

function Q5002Transmit2:PreTriggerIn()
    print("Q5002Transmit2 - PreTriggerIn")
end

function Q5002Transmit2:LightUpTriggerIn()
    print("Q5002Transmit2 - LightUpTriggerIn")
end

function Q5002Transmit2:TriggerOut()
    print("Q5002Transmit2 - TriggerOut")
end

return Q5002Transmit2
