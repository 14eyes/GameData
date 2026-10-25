require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602201Trigger_Transmit_1 = class("Q602201Trigger_Transmit_1", GadgetActorProxy)
Q602201Trigger_Transmit_1.defaultAlias = "Q602201Trigger_Transmit_1"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602201Trigger_Transmit_1:OnPostDataPrepare()
    print("Q602201Trigger_Transmit_1 - OnPostDataPrepare")
    this = self
end

function Q602201Trigger_Transmit_1:OnPostComponentPrepare()
    print("Q602201Trigger_Transmit_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(66, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602201Trigger_Transmit_1:TriggerIn()
    print("Q602201Trigger_Transmit_1 - TriggerIn")
    actorMgr:GetActor("6022"):TransmitPlayerWithQuestIdByData(602201, 2, datas.TransmitDataBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q602201Trigger_Transmit_1:PreTriggerIn()
    print("Q602201Trigger_Transmit_1 - PreTriggerIn")
end

function Q602201Trigger_Transmit_1:LightUpTriggerIn()
    print("Q602201Trigger_Transmit_1 - LightUpTriggerIn")
end

function Q602201Trigger_Transmit_1:TriggerOut()
    print("Q602201Trigger_Transmit_1 - TriggerOut")
end

return Q602201Trigger_Transmit_1
