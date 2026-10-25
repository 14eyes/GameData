require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110202Trigger = class("Q7110202Trigger", GadgetActorProxy)
Q7110202Trigger.defaultAlias = "Q7110202Trigger"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110202Trigger:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110202Trigger] OnPostDataPrepare")
    this = self
end

function Q7110202Trigger:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110202Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7110202Trigger:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110202Trigger] TriggerIn")
    actorMgr:GetActor("71102"):RequestInteraction(npcs.Npc21094Data.alias, "", true)
    this:DestroySelf()
end

function Q7110202Trigger:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110202Trigger] PreTriggerIn")
end

function Q7110202Trigger:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110202Trigger] LightUpTriggerIn")
end

function Q7110202Trigger:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110202Trigger] TriggerOut")
end

return Q7110202Trigger
