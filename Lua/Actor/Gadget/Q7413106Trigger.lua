require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413106Trigger = class("Q7413106Trigger", GadgetActorProxy)
Q7413106Trigger.defaultAlias = "Q7413106Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413106Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413106Trigger] OnPostDataPrepare")
    this = self
end

function Q7413106Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413106Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(29, 15, 13, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413106Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413106Trigger] TriggerIn")
    actorMgr:GetActor("74131"):NarratorOnlyTaskByData(datas.Narrator_7413103, function(arg1)
        actorMgr:GetActor("74131"):NarratorOnlyTaskByData(datas.Narrator_7413116)
        this:DestroySelf()
    end)
end

function Q7413106Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413106Trigger] PreTriggerIn")
end

function Q7413106Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413106Trigger] LightUpTriggerIn")
end

function Q7413106Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413106Trigger] TriggerOut")
end

return Q7413106Trigger
