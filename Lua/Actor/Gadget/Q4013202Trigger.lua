require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013202Trigger = class("Q4013202Trigger", GadgetActorProxy)
Q4013202Trigger.defaultAlias = "Q4013202Trigger"
local Q40132ClientConfig = require("Quest/Client/Q40132ClientConfig")

local this
local subIDs = Q40132ClientConfig.SubIDs
local npcs = Q40132ClientConfig.Npcs
local points = Q40132ClientConfig.Points
local datas = Q40132ClientConfig.Datas

function Q4013202Trigger:OnPostDataPrepare()
    print("[MainId: 40132][Trigger: Q4013202Trigger] OnPostDataPrepare")
    this = self
end

function Q4013202Trigger:OnPostComponentPrepare()
    print("[MainId: 40132][Trigger: Q4013202Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q4013202Trigger:TriggerIn()
    print("[MainId: 40132][Trigger: Q4013202Trigger] TriggerIn")
    actorMgr:GetActor("40132"):RequestInteraction(npcs.Npc1082Data.alias, "", true)
    this:DestroySelf()
end

function Q4013202Trigger:PreTriggerIn()
    print("[MainId: 40132][Trigger: Q4013202Trigger] PreTriggerIn")
end

function Q4013202Trigger:LightUpTriggerIn()
    print("[MainId: 40132][Trigger: Q4013202Trigger] LightUpTriggerIn")
end

function Q4013202Trigger:TriggerOut()
    print("[MainId: 40132][Trigger: Q4013202Trigger] TriggerOut")
end

return Q4013202Trigger
