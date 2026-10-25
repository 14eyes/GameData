require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601601TransmitTrigger = class("Q601601TransmitTrigger", GadgetActorProxy)
Q601601TransmitTrigger.defaultAlias = "Q601601TransmitTrigger"
local Q6016ClientConfig = require("Quest/Client/Q6016ClientConfig")

local this
local subIDs = Q6016ClientConfig.SubIDs
local datas = Q6016ClientConfig.Datas
local npcs = Q6016ClientConfig.Npcs
local points = Q6016ClientConfig.Points

function Q601601TransmitTrigger:OnPostDataPrepare()
    print("Q601601TransmitTrigger - OnPostDataPrepare")
    this = self
end

function Q601601TransmitTrigger:OnPostComponentPrepare()
    print("Q601601TransmitTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6016)
end

function Q601601TransmitTrigger:TriggerIn()
    print("Q601601TransmitTrigger - TriggerIn")
end

function Q601601TransmitTrigger:PreTriggerIn()
    print("Q601601TransmitTrigger - PreTriggerIn")
    actorMgr:GetActor("6016"):TransmitPlayerWithQuestIdByData(601601, 1, datas.TransmitWithBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q601601TransmitTrigger:LightUpTriggerIn()
    print("Q601601TransmitTrigger - LightUpTriggerIn")
end

function Q601601TransmitTrigger:TriggerOut()
    print("Q601601TransmitTrigger - TriggerOut")
end

return Q601601TransmitTrigger
