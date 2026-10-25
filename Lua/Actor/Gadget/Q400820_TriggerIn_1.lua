require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400820_TriggerIn_1 = class("Q400820_TriggerIn_1", GadgetActorProxy)
Q400820_TriggerIn_1.defaultAlias = "Q400820_TriggerIn_1"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400820_TriggerIn_1:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_1] OnPostDataPrepare")
    this = self
end

function Q400820_TriggerIn_1:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_1] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400820_TriggerIn_1:TriggerIn()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_1] TriggerIn")
    actorMgr:GetActor("4008"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("4008"):TransmitPlayerWithDialogTextByQuestId(400820, 1, datas.DialogsId, 0.5)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q400820_TriggerIn_1:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_1] PreTriggerIn")
end

function Q400820_TriggerIn_1:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_1] LightUpTriggerIn")
end

function Q400820_TriggerIn_1:TriggerOut()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_1] TriggerOut")
end

return Q400820_TriggerIn_1
