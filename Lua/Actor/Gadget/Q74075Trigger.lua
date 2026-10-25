require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74075Trigger = class("Q74075Trigger", GadgetActorProxy)
Q74075Trigger.defaultAlias = "Q74075Trigger"
local Q74075ClientConfig = require("Quest/Client/Q74075ClientConfig")

local this
local subIDs = Q74075ClientConfig.SubIDs
local npcs = Q74075ClientConfig.Npcs
local points = Q74075ClientConfig.Points
local datas = Q74075ClientConfig.Datas

function Q74075Trigger:OnPostDataPrepare()
    print("[MainId: 74075][Trigger: Q74075Trigger] OnPostDataPrepare")
    this = self
end

function Q74075Trigger:OnPostComponentPrepare()
    print("[MainId: 74075][Trigger: Q74075Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(25, 5, 25, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74075Trigger:TriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger] TriggerIn")
    actorMgr:GetActor("74075"):NarratorOnlyTaskByData(datas.NarratorWithId3, function(arg1)
        local actor = actorMgr:GetActor("74075")
        actorUtils.FinishQuestID(false, 7407502)
        this:DestroySelf()
    end)
end

function Q74075Trigger:PreTriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger] PreTriggerIn")
end

function Q74075Trigger:LightUpTriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger] LightUpTriggerIn")
end

function Q74075Trigger:TriggerOut()
    print("[MainId: 74075][Trigger: Q74075Trigger] TriggerOut")
end

return Q74075Trigger
