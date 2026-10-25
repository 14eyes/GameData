require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500208Transmit = class("Q500208Transmit", GadgetActorProxy)
Q500208Transmit.defaultAlias = "Q500208Transmit"
local Q5002ClientConfig = require("Quest/Client/Q5002ClientConfig")

local this
local subIDs = Q5002ClientConfig.SubIDs
local datas = Q5002ClientConfig.Datas
local npcs = Q5002ClientConfig.Npcs
local points = Q5002ClientConfig.Points

function Q500208Transmit:OnPostDataPrepare()
    print("Q500208Transmit - OnPostDataPrepare")
    this = self
end

function Q500208Transmit:OnPostComponentPrepare()
    print("Q500208Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5002)
end

function Q500208Transmit:TriggerIn()
    print("Q500208Transmit - TriggerIn")
    actorMgr:GetActor("5002"):PlayerEnterDungeonWithData(1338, 1213, 500209, 0, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q500208Transmit:PreTriggerIn()
    print("Q500208Transmit - PreTriggerIn")
end

function Q500208Transmit:LightUpTriggerIn()
    print("Q500208Transmit - LightUpTriggerIn")
end

function Q500208Transmit:TriggerOut()
    print("Q500208Transmit - TriggerOut")
end

return Q500208Transmit
