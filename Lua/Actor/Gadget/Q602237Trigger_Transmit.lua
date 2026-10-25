require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602237Trigger_Transmit = class("Q602237Trigger_Transmit", GadgetActorProxy)
Q602237Trigger_Transmit.defaultAlias = "Q602237Trigger_Transmit"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602237Trigger_Transmit:OnPostDataPrepare()
    print("Q602237Trigger_Transmit - OnPostDataPrepare")
    this = self
end

function Q602237Trigger_Transmit:OnPostComponentPrepare()
    print("Q602237Trigger_Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602237Trigger_Transmit:TriggerIn()
    print("Q602237Trigger_Transmit - TriggerIn")
    actorMgr:GetActor("6022"):TransmitPlayerWithQuestIdByData(602237, 1, datas.TransmitDataMapTrans01, nil, nil, nil)
    this:DestroySelf()
end

function Q602237Trigger_Transmit:PreTriggerIn()
    print("Q602237Trigger_Transmit - PreTriggerIn")
end

function Q602237Trigger_Transmit:LightUpTriggerIn()
    print("Q602237Trigger_Transmit - LightUpTriggerIn")
end

function Q602237Trigger_Transmit:TriggerOut()
    print("Q602237Trigger_Transmit - TriggerOut")
end

return Q602237Trigger_Transmit
