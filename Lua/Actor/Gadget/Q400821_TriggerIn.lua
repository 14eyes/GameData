require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400821_TriggerIn = class("Q400821_TriggerIn", GadgetActorProxy)
Q400821_TriggerIn.defaultAlias = "Q400821_TriggerIn"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400821_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400821_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400821_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400821_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 30, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400821_TriggerIn:TriggerIn()
    print("[MainId: 4008][Trigger: Q400821_TriggerIn] TriggerIn")
    actorMgr:GetActor("4008"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("4008"):PlayerEnterDungeonPointWithDialogs(1043, 1186, 400816, 1, datas.DialogsId, 0.5, nil, nil)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q400821_TriggerIn:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400821_TriggerIn] PreTriggerIn")
end

function Q400821_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400821_TriggerIn] LightUpTriggerIn")
end

function Q400821_TriggerIn:TriggerOut()
    print("[MainId: 4008][Trigger: Q400821_TriggerIn] TriggerOut")
end

return Q400821_TriggerIn
