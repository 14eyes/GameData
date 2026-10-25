require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q6017MoonTransmit = class("Q6017MoonTransmit", GadgetActorProxy)
Q6017MoonTransmit.defaultAlias = "Q6017MoonTransmit"
local Q6017ClientConfig = require("Quest/Client/Q6017ClientConfig")

local this
local subIDs = Q6017ClientConfig.SubIDs
local datas = Q6017ClientConfig.Datas
local npcs = Q6017ClientConfig.Npcs
local points = Q6017ClientConfig.Points

function Q6017MoonTransmit:OnPostDataPrepare()
    print("Q6017MoonTransmit - OnPostDataPrepare")
    this = self
end

function Q6017MoonTransmit:OnPostComponentPrepare()
    print("Q6017MoonTransmit - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6017)
end

function Q6017MoonTransmit:TriggerIn()
    print("Q6017MoonTransmit - TriggerIn")
    actorMgr:GetActor("6017"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("6017"):TransmitPlayerWithQuestIdByData(601707, 1, datas.TransmitDataWithWhiteScreen, nil, nil, nil)
        this:DestroySelf()
    end, nil, nil, "", true, true)
end

function Q6017MoonTransmit:PreTriggerIn()
    print("Q6017MoonTransmit - PreTriggerIn")
end

function Q6017MoonTransmit:LightUpTriggerIn()
    print("Q6017MoonTransmit - LightUpTriggerIn")
end

function Q6017MoonTransmit:TriggerOut()
    print("Q6017MoonTransmit - TriggerOut")
end

return Q6017MoonTransmit
