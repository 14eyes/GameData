require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400221_Trigger = class("Q400221_Trigger", GadgetActorProxy)
Q400221_Trigger.defaultAlias = "Q400221_Trigger"
local Q4002ClientConfig = require("Quest/Client/Q4002ClientConfig")

local this
local subIDs = Q4002ClientConfig.SubIDs
local npcs = Q4002ClientConfig.Npcs
local points = Q4002ClientConfig.Points
local datas = Q4002ClientConfig.Datas

function Q400221_Trigger:OnPostDataPrepare()
    print("[MainId: 4002][Trigger: Q400221_Trigger] OnPostDataPrepare")
    this = self
end

function Q400221_Trigger:OnPostComponentPrepare()
    print("[MainId: 4002][Trigger: Q400221_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400221_Trigger:TriggerIn()
    print("[MainId: 4002][Trigger: Q400221_Trigger] TriggerIn")
    actorMgr:GetActor("4002"):RequestInteraction(npcs.Npc1075Data.alias)
    this:DestroySelf()
end

function Q400221_Trigger:PreTriggerIn()
    print("[MainId: 4002][Trigger: Q400221_Trigger] PreTriggerIn")
end

function Q400221_Trigger:LightUpTriggerIn()
    print("[MainId: 4002][Trigger: Q400221_Trigger] LightUpTriggerIn")
end

function Q400221_Trigger:TriggerOut()
    print("[MainId: 4002][Trigger: Q400221_Trigger] TriggerOut")
end

return Q400221_Trigger
