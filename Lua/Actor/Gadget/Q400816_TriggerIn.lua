require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400816_TriggerIn = class("Q400816_TriggerIn", GadgetActorProxy)
Q400816_TriggerIn.defaultAlias = "Q400816_TriggerIn"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400816_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400816_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400816_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400816_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400816_TriggerIn:TriggerIn()
    print("[MainId: 4008][Trigger: Q400816_TriggerIn] TriggerIn")
    this:DestroySelf()
end

function Q400816_TriggerIn:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400816_TriggerIn] PreTriggerIn")
    actorMgr:GetActor("4008"):ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 0, false, true)
end

function Q400816_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400816_TriggerIn] LightUpTriggerIn")
    actorMgr:GetActor("4008"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("4008"):RequestInteraction(npcs.Npc13477Data.alias)
    end, nil, nil, 0, false, true)
end

function Q400816_TriggerIn:TriggerOut()
    print("[MainId: 4008][Trigger: Q400816_TriggerIn] TriggerOut")
end

return Q400816_TriggerIn
