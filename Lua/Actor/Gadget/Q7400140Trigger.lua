require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400140Trigger = class("Q7400140Trigger", GadgetActorProxy)
Q7400140Trigger.defaultAlias = "Q7400140Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400140Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400140Trigger] OnPostDataPrepare")
    this = self
end

function Q7400140Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400140Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400140Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400140Trigger] TriggerIn")
    actorMgr:GetActor("74001"):RequestInteraction(npcs.Npc21146Data.alias)
end

function Q7400140Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400140Trigger] PreTriggerIn")
end

function Q7400140Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400140Trigger] LightUpTriggerIn")
end

function Q7400140Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400140Trigger] TriggerOut")
end

return Q7400140Trigger
