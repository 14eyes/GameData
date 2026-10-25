require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110208Trigger = class("Q7110208Trigger", GadgetActorProxy)
Q7110208Trigger.defaultAlias = "Q7110208Trigger"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110208Trigger:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110208Trigger] OnPostDataPrepare")
    this = self
end

function Q7110208Trigger:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110208Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7110208Trigger:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110208Trigger] TriggerIn")
    actorMgr:GetActor("71102"):RequestInteraction(npcs.Npc2492Data.alias, "", true)
    this:DestroySelf()
end

function Q7110208Trigger:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110208Trigger] PreTriggerIn")
end

function Q7110208Trigger:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110208Trigger] LightUpTriggerIn")
end

function Q7110208Trigger:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110208Trigger] TriggerOut")
end

return Q7110208Trigger
