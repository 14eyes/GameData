require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401568Triggerdagong = class("Q401568Triggerdagong", GadgetActorProxy)
Q401568Triggerdagong.defaultAlias = "Q401568Triggerdagong"
local Q4015ClientConfig = require("Quest/Client/Q4015ClientConfig")

local this
local subIDs = Q4015ClientConfig.SubIDs
local npcs = Q4015ClientConfig.Npcs
local points = Q4015ClientConfig.Points
local datas = Q4015ClientConfig.Datas

function Q401568Triggerdagong:OnPostDataPrepare()
    print("[MainId: 4015][Trigger: Q401568Triggerdagong] OnPostDataPrepare")
    this = self
end

function Q401568Triggerdagong:OnPostComponentPrepare()
    print("[MainId: 4015][Trigger: Q401568Triggerdagong] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401568Triggerdagong:TriggerIn()
    print("[MainId: 4015][Trigger: Q401568Triggerdagong] TriggerIn")
    actorMgr:GetActor("4015"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("4015"):RequestInteraction(npcs.Npc5236Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401568Triggerdagong:PreTriggerIn()
    print("[MainId: 4015][Trigger: Q401568Triggerdagong] PreTriggerIn")
end

function Q401568Triggerdagong:LightUpTriggerIn()
    print("[MainId: 4015][Trigger: Q401568Triggerdagong] LightUpTriggerIn")
end

function Q401568Triggerdagong:TriggerOut()
    print("[MainId: 4015][Trigger: Q401568Triggerdagong] TriggerOut")
end

return Q401568Triggerdagong
