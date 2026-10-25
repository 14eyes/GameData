require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500308transmit = class("Q500308transmit", GadgetActorProxy)
Q500308transmit.defaultAlias = "Q500308transmit"
local Q5003ClientConfig = require("Quest/Client/Q5003ClientConfig")

local this
local subIDs = Q5003ClientConfig.SubIDs
local datas = Q5003ClientConfig.Datas
local npcs = Q5003ClientConfig.Npcs
local points = Q5003ClientConfig.Points

function Q500308transmit:OnPostDataPrepare()
    print("Q500308transmit - OnPostDataPrepare")
    this = self
end

function Q500308transmit:OnPostComponentPrepare()
    print("Q500308transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5003)
end

function Q500308transmit:TriggerIn()
    print("Q500308transmit - TriggerIn")
    actorMgr:GetActor("5003"):TransmitPlayerWithQuestIdByData(500308, 1, datas.TransmitDataNoWord, nil, nil, nil)
    this:DestroySelf()
end

function Q500308transmit:PreTriggerIn()
    print("Q500308transmit - PreTriggerIn")
end

function Q500308transmit:LightUpTriggerIn()
    print("Q500308transmit - LightUpTriggerIn")
end

function Q500308transmit:TriggerOut()
    print("Q500308transmit - TriggerOut")
end

return Q500308transmit
