require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013208Trigger = class("Q4013208Trigger", GadgetActorProxy)
Q4013208Trigger.defaultAlias = "Q4013208Trigger"
local Q40132ClientConfig = require("Quest/Client/Q40132ClientConfig")

local this
local subIDs = Q40132ClientConfig.SubIDs
local npcs = Q40132ClientConfig.Npcs
local points = Q40132ClientConfig.Points
local datas = Q40132ClientConfig.Datas

function Q4013208Trigger:OnPostDataPrepare()
    print("[MainId: 40132][Trigger: Q4013208Trigger] OnPostDataPrepare")
    this = self
end

function Q4013208Trigger:OnPostComponentPrepare()
    print("[MainId: 40132][Trigger: Q4013208Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013208Trigger:TriggerIn()
    print("[MainId: 40132][Trigger: Q4013208Trigger] TriggerIn")
    actorMgr:GetActor("40132"):RequestInteraction(npcs.Npc1081Data.alias, "", true)
    this:DestroySelf()
end

function Q4013208Trigger:PreTriggerIn()
    print("[MainId: 40132][Trigger: Q4013208Trigger] PreTriggerIn")
end

function Q4013208Trigger:LightUpTriggerIn()
    print("[MainId: 40132][Trigger: Q4013208Trigger] LightUpTriggerIn")
end

function Q4013208Trigger:TriggerOut()
    print("[MainId: 40132][Trigger: Q4013208Trigger] TriggerOut")
end

return Q4013208Trigger
