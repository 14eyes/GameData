require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400820_TriggerIn_2 = class("Q400820_TriggerIn_2", GadgetActorProxy)
Q400820_TriggerIn_2.defaultAlias = "Q400820_TriggerIn_2"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400820_TriggerIn_2:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_2] OnPostDataPrepare")
    this = self
end

function Q400820_TriggerIn_2:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_2] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 30, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400820_TriggerIn_2:TriggerIn()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_2] TriggerIn")
    this:DestroySelf()
end

function Q400820_TriggerIn_2:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_2] PreTriggerIn")
end

function Q400820_TriggerIn_2:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_2] LightUpTriggerIn")
    actorMgr:GetActor("4008"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("4008"):RequestInteraction(npcs.Npc1074Data.alias)
    end, nil, nil, 0, false, true)
end

function Q400820_TriggerIn_2:TriggerOut()
    print("[MainId: 4008][Trigger: Q400820_TriggerIn_2] TriggerOut")
end

return Q400820_TriggerIn_2
