require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602201Trigger_Transmit = class("Q602201Trigger_Transmit", GadgetActorProxy)
Q602201Trigger_Transmit.defaultAlias = "Q602201Trigger_Transmit"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602201Trigger_Transmit:OnPostDataPrepare()
    print("Q602201Trigger_Transmit - OnPostDataPrepare")
    this = self
end

function Q602201Trigger_Transmit:OnPostComponentPrepare()
    print("Q602201Trigger_Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(30.761114, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602201Trigger_Transmit:TriggerIn()
    print("Q602201Trigger_Transmit - TriggerIn")
end

function Q602201Trigger_Transmit:PreTriggerIn()
    print("Q602201Trigger_Transmit - PreTriggerIn")
    actorMgr:GetActor("6022"):ShowBlackScreen(0, 1.5, 0.5, nil, nil, nil, "QUEST_Black_Clear", false, true)
end

function Q602201Trigger_Transmit:LightUpTriggerIn()
    print("Q602201Trigger_Transmit - LightUpTriggerIn")
    actorMgr:GetActor("6022"):PlayerEnterDungeonWithData(1816, 1291, 602201, 1, datas.EnterDungeonBlack, nil, nil)
    this:DestroySelf()
end

function Q602201Trigger_Transmit:TriggerOut()
    print("Q602201Trigger_Transmit - TriggerOut")
end

return Q602201Trigger_Transmit
