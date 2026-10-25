require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013005TriggerTransmit = class("Q4013005TriggerTransmit", GadgetActorProxy)
Q4013005TriggerTransmit.defaultAlias = "Q4013005TriggerTransmit"
local Q40130ClientConfig = require("Quest/Client/Q40130ClientConfig")

local this
local subIDs = Q40130ClientConfig.SubIDs
local npcs = Q40130ClientConfig.Npcs
local datas = Q40130ClientConfig.Datas

function Q4013005TriggerTransmit:OnPostDataPrepare()
    print("[MainId: 40130][Trigger: Q4013005TriggerTransmit] OnPostDataPrepare")
    this = self
end

function Q4013005TriggerTransmit:OnPostComponentPrepare()
    print("[MainId: 40130][Trigger: Q4013005TriggerTransmit] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013005TriggerTransmit:TriggerIn()
    print("[MainId: 40130][Trigger: Q4013005TriggerTransmit] TriggerIn")
    actorMgr:GetActor("40130"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40130"):TransmitPlayerWithDialogTextByQuestId(4013005, 1, datas.DialogsId, 2)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q4013005TriggerTransmit:PreTriggerIn()
    print("[MainId: 40130][Trigger: Q4013005TriggerTransmit] PreTriggerIn")
end

function Q4013005TriggerTransmit:LightUpTriggerIn()
    print("[MainId: 40130][Trigger: Q4013005TriggerTransmit] LightUpTriggerIn")
end

function Q4013005TriggerTransmit:TriggerOut()
    print("[MainId: 40130][Trigger: Q4013005TriggerTransmit] TriggerOut")
end

return Q4013005TriggerTransmit
