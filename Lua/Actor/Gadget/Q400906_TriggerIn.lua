require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400906_TriggerIn = class("Q400906_TriggerIn", GadgetActorProxy)
Q400906_TriggerIn.defaultAlias = "Q400906_TriggerIn"
local Q4009ClientConfig = require("Quest/Client/Q4009ClientConfig")

local this
local subIDs = Q4009ClientConfig.SubIDs
local npcs = Q4009ClientConfig.Npcs
local points = Q4009ClientConfig.Points
local datas = Q4009ClientConfig.Datas

function Q400906_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4009][Trigger: Q400906_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400906_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4009][Trigger: Q400906_TriggerIn] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400906_TriggerIn:TriggerIn()
    print("[MainId: 4009][Trigger: Q400906_TriggerIn] TriggerIn")
    this:DestroySelf()
end

function Q400906_TriggerIn:PreTriggerIn()
    print("[MainId: 4009][Trigger: Q400906_TriggerIn] PreTriggerIn")
    actorMgr:GetActor("4009"):ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 0, false, true)
end

function Q400906_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4009][Trigger: Q400906_TriggerIn] LightUpTriggerIn")
    actorMgr:GetActor("4009"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("4009"):RequestInteraction(npcs.Npc1078Data.alias)
    end, nil, nil, 0, false, true)
end

function Q400906_TriggerIn:TriggerOut()
    print("[MainId: 4009][Trigger: Q400906_TriggerIn] TriggerOut")
end

return Q400906_TriggerIn
