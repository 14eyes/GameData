require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005Trigger = class("Q4005Trigger", GadgetActorProxy)
Q4005Trigger.defaultAlias = "Q4005Trigger"
local Q4005ClientConfig = require("Quest/Client/Q4005ClientConfig")

local this
local subIDs = Q4005ClientConfig.SubIDs
local npcs = Q4005ClientConfig.Npcs
local points = Q4005ClientConfig.Points
local datas = Q4005ClientConfig.Datas

function Q4005Trigger:OnPostDataPrepare()
    print("[MainId: 4005][Trigger: Q4005Trigger] OnPostDataPrepare")
    this = self
end

function Q4005Trigger:OnPostComponentPrepare()
    print("[MainId: 4005][Trigger: Q4005Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 13, 7, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4005Trigger:TriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger] TriggerIn")
    actorMgr:GetActor("4005"):RequestInteraction(npcs.Npc1074Data.alias)
    this:DestroySelf()
end

function Q4005Trigger:PreTriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger] PreTriggerIn")
end

function Q4005Trigger:LightUpTriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger] LightUpTriggerIn")
end

function Q4005Trigger:TriggerOut()
    print("[MainId: 4005][Trigger: Q4005Trigger] TriggerOut")
end

return Q4005Trigger
