require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601504transmit = class("Q601504transmit", GadgetActorProxy)
Q601504transmit.defaultAlias = "Q601504transmit"
local Q6015ClientConfig = require("Quest/Client/Q6015ClientConfig")

local this
local subIDs = Q6015ClientConfig.SubIDs
local datas = Q6015ClientConfig.Datas
local npcs = Q6015ClientConfig.Npcs
local points = Q6015ClientConfig.Points

function Q601504transmit:OnPostDataPrepare()
    print("Q601504transmit - OnPostDataPrepare")
    this = self
end

function Q601504transmit:OnPostComponentPrepare()
    print("Q601504transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6015)
end

function Q601504transmit:TriggerIn()
    print("Q601504transmit - TriggerIn")
    actorMgr:GetActor("6015"):TransmitPlayerWithQuestIdByData(601504, 1, datas.TransmitShojoOut, nil, nil, nil)
    this:DestroySelf()
end

function Q601504transmit:PreTriggerIn()
    print("Q601504transmit - PreTriggerIn")
end

function Q601504transmit:LightUpTriggerIn()
    print("Q601504transmit - LightUpTriggerIn")
end

function Q601504transmit:TriggerOut()
    print("Q601504transmit - TriggerOut")
end

return Q601504transmit
