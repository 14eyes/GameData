require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020Trigger3 = class("Q4020Trigger3", GadgetActorProxy)
Q4020Trigger3.defaultAlias = "Q4020Trigger3"
local Q4020ClientConfig = require("Quest/Client/Q4020ClientConfig")

local this
local subIDs = Q4020ClientConfig.SubIDs
local npcs = Q4020ClientConfig.Npcs
local gadgets = Q4020ClientConfig.Gadgets
local points = Q4020ClientConfig.Points
local datas = Q4020ClientConfig.Datas

function Q4020Trigger3:OnPostDataPrepare()
    print("[MainId: 4020][Trigger: Q4020Trigger3] OnPostDataPrepare")
    this = self
end

function Q4020Trigger3:OnPostComponentPrepare()
    print("[MainId: 4020][Trigger: Q4020Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4020Trigger3:TriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger3] TriggerIn")
    actorMgr:GetActor("4020"):RequestInteraction(npcs.Npc1075Data.alias, "", true)
    this:DestroySelf()
end

function Q4020Trigger3:PreTriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger3] PreTriggerIn")
end

function Q4020Trigger3:LightUpTriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger3] LightUpTriggerIn")
    actorMgr:GetActor("4020"):ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, true)
end

function Q4020Trigger3:TriggerOut()
    print("[MainId: 4020][Trigger: Q4020Trigger3] TriggerOut")
end

return Q4020Trigger3
