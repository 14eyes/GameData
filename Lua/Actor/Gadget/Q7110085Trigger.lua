require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110085Trigger = class("Q7110085Trigger", GadgetActorProxy)
Q7110085Trigger.defaultAlias = "Q7110085Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110085Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110085Trigger] OnPostDataPrepare")
    this = self
end

function Q7110085Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110085Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7110085Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110085Trigger] TriggerIn")
    actorMgr:GetActor("71100"):RequestInteraction(npcs.Npc21307Data.alias, "", true)
    this:DestroySelf()
end

function Q7110085Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110085Trigger] PreTriggerIn")
end

function Q7110085Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110085Trigger] LightUpTriggerIn")
end

function Q7110085Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110085Trigger] TriggerOut")
end

return Q7110085Trigger
