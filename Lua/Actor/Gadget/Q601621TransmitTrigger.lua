require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601621TransmitTrigger = class("Q601621TransmitTrigger", GadgetActorProxy)
Q601621TransmitTrigger.defaultAlias = "Q601621TransmitTrigger"
local Q6016ClientConfig = require("Quest/Client/Q6016ClientConfig")

local this
local subIDs = Q6016ClientConfig.SubIDs
local datas = Q6016ClientConfig.Datas
local npcs = Q6016ClientConfig.Npcs
local points = Q6016ClientConfig.Points

function Q601621TransmitTrigger:OnPostDataPrepare()
    print("Q601621TransmitTrigger - OnPostDataPrepare")
    this = self
end

function Q601621TransmitTrigger:OnPostComponentPrepare()
    print("Q601621TransmitTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(800, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6016)
end

function Q601621TransmitTrigger:TriggerIn()
    print("Q601621TransmitTrigger - TriggerIn")
end

function Q601621TransmitTrigger:PreTriggerIn()
    print("Q601621TransmitTrigger - PreTriggerIn")
    actorMgr:GetActor("6016"):TransmitPlayerWithQuestIdByData(601621, 1, datas.TransmitWithBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q601621TransmitTrigger:LightUpTriggerIn()
    print("Q601621TransmitTrigger - LightUpTriggerIn")
end

function Q601621TransmitTrigger:TriggerOut()
    print("Q601621TransmitTrigger - TriggerOut")
end

return Q601621TransmitTrigger
