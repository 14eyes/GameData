require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400007_Trigger = class("Q400007_Trigger", GadgetActorProxy)
Q400007_Trigger.defaultAlias = "Q400007_Trigger"
local Q4000ClientConfig = require("Quest/Client/Q4000ClientConfig")

local this
local subIDs = Q4000ClientConfig.SubIDs
local npcs = Q4000ClientConfig.Npcs
local points = Q4000ClientConfig.Points
local datas = Q4000ClientConfig.Datas

function Q400007_Trigger:OnPostDataPrepare()
    print("[MainId: 4000][Trigger: Q400007_Trigger] OnPostDataPrepare")
    this = self
end

function Q400007_Trigger:OnPostComponentPrepare()
    print("[MainId: 4000][Trigger: Q400007_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400007_Trigger:TriggerIn()
    print("[MainId: 4000][Trigger: Q400007_Trigger] TriggerIn")
    actorMgr:GetActor("4000"):RequestInteraction(npcs.Npc13311Data.alias)
    this:DestroySelf()
end

function Q400007_Trigger:PreTriggerIn()
    print("[MainId: 4000][Trigger: Q400007_Trigger] PreTriggerIn")
end

function Q400007_Trigger:LightUpTriggerIn()
    print("[MainId: 4000][Trigger: Q400007_Trigger] LightUpTriggerIn")
end

function Q400007_Trigger:TriggerOut()
    print("[MainId: 4000][Trigger: Q400007_Trigger] TriggerOut")
end

return Q400007_Trigger
