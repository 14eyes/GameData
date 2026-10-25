require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401902_TriggerIn = class("Q401902_TriggerIn", GadgetActorProxy)
Q401902_TriggerIn.defaultAlias = "Q401902_TriggerIn"
local Q4019ClientConfig = require("Quest/Client/Q4019ClientConfig")

local this
local subIDs = Q4019ClientConfig.SubIDs
local npcs = Q4019ClientConfig.Npcs
local points = Q4019ClientConfig.Points
local datas = Q4019ClientConfig.Datas

function Q401902_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4019][Trigger: Q401902_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q401902_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4019][Trigger: Q401902_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 30, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401902_TriggerIn:TriggerIn()
    print("[MainId: 4019][Trigger: Q401902_TriggerIn] TriggerIn")
    actorMgr:GetActor("4019"):RequestInteraction(npcs.Npc1071Data.alias, "", true)
    this:DestroySelf()
end

function Q401902_TriggerIn:PreTriggerIn()
    print("[MainId: 4019][Trigger: Q401902_TriggerIn] PreTriggerIn")
end

function Q401902_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4019][Trigger: Q401902_TriggerIn] LightUpTriggerIn")
end

function Q401902_TriggerIn:TriggerOut()
    print("[MainId: 4019][Trigger: Q401902_TriggerIn] TriggerOut")
end

return Q401902_TriggerIn
