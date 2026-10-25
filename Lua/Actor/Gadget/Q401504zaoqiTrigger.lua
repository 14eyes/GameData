require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401504zaoqiTrigger = class("Q401504zaoqiTrigger", GadgetActorProxy)
Q401504zaoqiTrigger.defaultAlias = "Q401504zaoqiTrigger"
local Q4015ClientConfig = require("Quest/Client/Q4015ClientConfig")

local this
local subIDs = Q4015ClientConfig.SubIDs
local npcs = Q4015ClientConfig.Npcs
local points = Q4015ClientConfig.Points
local datas = Q4015ClientConfig.Datas

function Q401504zaoqiTrigger:OnPostDataPrepare()
    print("[MainId: 4015][Trigger: Q401504zaoqiTrigger] OnPostDataPrepare")
    this = self
end

function Q401504zaoqiTrigger:OnPostComponentPrepare()
    print("[MainId: 4015][Trigger: Q401504zaoqiTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401504zaoqiTrigger:TriggerIn()
    print("[MainId: 4015][Trigger: Q401504zaoqiTrigger] TriggerIn")
    actorMgr:GetActor("4015"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("4015"):RequestInteraction(npcs.Npc13512Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401504zaoqiTrigger:PreTriggerIn()
    print("[MainId: 4015][Trigger: Q401504zaoqiTrigger] PreTriggerIn")
end

function Q401504zaoqiTrigger:LightUpTriggerIn()
    print("[MainId: 4015][Trigger: Q401504zaoqiTrigger] LightUpTriggerIn")
end

function Q401504zaoqiTrigger:TriggerOut()
    print("[MainId: 4015][Trigger: Q401504zaoqiTrigger] TriggerOut")
end

return Q401504zaoqiTrigger
