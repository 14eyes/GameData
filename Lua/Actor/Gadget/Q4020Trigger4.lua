require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020Trigger4 = class("Q4020Trigger4", GadgetActorProxy)
Q4020Trigger4.defaultAlias = "Q4020Trigger4"
local Q4020ClientConfig = require("Quest/Client/Q4020ClientConfig")

local this
local subIDs = Q4020ClientConfig.SubIDs
local npcs = Q4020ClientConfig.Npcs
local gadgets = Q4020ClientConfig.Gadgets
local points = Q4020ClientConfig.Points
local datas = Q4020ClientConfig.Datas

function Q4020Trigger4:OnPostDataPrepare()
    print("[MainId: 4020][Trigger: Q4020Trigger4] OnPostDataPrepare")
    this = self
end

function Q4020Trigger4:OnPostComponentPrepare()
    print("[MainId: 4020][Trigger: Q4020Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4020Trigger4:TriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger4] TriggerIn")
    actorMgr:GetActor("4020"):RequestInteraction(npcs.Npc1075Data.alias, "", true)
    this:DestroySelf()
end

function Q4020Trigger4:PreTriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger4] PreTriggerIn")
end

function Q4020Trigger4:LightUpTriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger4] LightUpTriggerIn")
    actorMgr:GetActor("4020"):ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, true)
end

function Q4020Trigger4:TriggerOut()
    print("[MainId: 4020][Trigger: Q4020Trigger4] TriggerOut")
end

return Q4020Trigger4
