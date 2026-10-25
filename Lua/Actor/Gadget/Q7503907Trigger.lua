require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503907Trigger = class("Q7503907Trigger", GadgetActorProxy)
Q7503907Trigger.defaultAlias = "Q7503907Trigger"
local Q75039ClientConfig = require("Quest/Client/Q75039ClientConfig")

local this
local subIDs = Q75039ClientConfig.SubIDs
local npcs = Q75039ClientConfig.Npcs
local datas = Q75039ClientConfig.Datas

function Q7503907Trigger:OnPostDataPrepare()
    print("[MainId: 75039][Trigger: Q7503907Trigger] OnPostDataPrepare")
    this = self
end

function Q7503907Trigger:OnPostComponentPrepare()
    print("[MainId: 75039][Trigger: Q7503907Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75039)
end

function Q7503907Trigger:TriggerIn()
    print("[MainId: 75039][Trigger: Q7503907Trigger] TriggerIn")
    actorMgr:GetActor("75039"):RequestInteraction(npcs.Npc21586Data.alias, "", true)
    this:DestroySelf()
end

function Q7503907Trigger:PreTriggerIn()
    print("[MainId: 75039][Trigger: Q7503907Trigger] PreTriggerIn")
end

function Q7503907Trigger:LightUpTriggerIn()
    print("[MainId: 75039][Trigger: Q7503907Trigger] LightUpTriggerIn")
end

function Q7503907Trigger:TriggerOut()
    print("[MainId: 75039][Trigger: Q7503907Trigger] TriggerOut")
end

return Q7503907Trigger
