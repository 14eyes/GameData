require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500708TriggerTransmit = class("Q500708TriggerTransmit", GadgetActorProxy)
Q500708TriggerTransmit.defaultAlias = "Q500708TriggerTransmit"
local Q5007ClientConfig = require("Quest/Client/Q5007ClientConfig")

local this
local subIDs = Q5007ClientConfig.SubIDs
local datas = Q5007ClientConfig.Datas
local npcs = Q5007ClientConfig.Npcs
local points = Q5007ClientConfig.Points

function Q500708TriggerTransmit:OnPostDataPrepare()
    print("Q500708TriggerTransmit - OnPostDataPrepare")
    this = self
end

function Q500708TriggerTransmit:OnPostComponentPrepare()
    print("Q500708TriggerTransmit - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5007)
end

function Q500708TriggerTransmit:TriggerIn()
    print("Q500708TriggerTransmit - TriggerIn")
    actorMgr:GetActor("5007"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        globalActor:PlayerEnterDungeon(2, 1219, true, datas.TextmapId, 4, true)
        this:DestroySelf()
    end, nil, nil, 0, true, true)
end

function Q500708TriggerTransmit:PreTriggerIn()
    print("Q500708TriggerTransmit - PreTriggerIn")
end

function Q500708TriggerTransmit:LightUpTriggerIn()
    print("Q500708TriggerTransmit - LightUpTriggerIn")
end

function Q500708TriggerTransmit:TriggerOut()
    print("Q500708TriggerTransmit - TriggerOut")
end

return Q500708TriggerTransmit
