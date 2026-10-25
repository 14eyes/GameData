require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022Trigger = class("Q4022Trigger", GadgetActorProxy)
Q4022Trigger.defaultAlias = "Q4022Trigger"
local Q4022ClientConfig = require("Quest/Client/Q4022ClientConfig")

local this
local subIDs = Q4022ClientConfig.SubIDs
local npcs = Q4022ClientConfig.Npcs
local gadgets = Q4022ClientConfig.Gadgets
local points = Q4022ClientConfig.Points
local datas = Q4022ClientConfig.Datas

function Q4022Trigger:OnPostDataPrepare()
    print("[MainId: 4022][Trigger: Q4022Trigger] OnPostDataPrepare")
    this = self
end

function Q4022Trigger:OnPostComponentPrepare()
    print("[MainId: 4022][Trigger: Q4022Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4022Trigger:TriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger] TriggerIn")
    local actor = actorMgr:GetActor("4022")
    this:DestroySelf()
    actor:NarratorOnlyTaskByData(datas.Narrator_402201)
end

function Q4022Trigger:PreTriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger] PreTriggerIn")
end

function Q4022Trigger:LightUpTriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger] LightUpTriggerIn")
end

function Q4022Trigger:TriggerOut()
    print("[MainId: 4022][Trigger: Q4022Trigger] TriggerOut")
end

return Q4022Trigger
