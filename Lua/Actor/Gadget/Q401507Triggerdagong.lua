require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401507Triggerdagong = class("Q401507Triggerdagong", GadgetActorProxy)
Q401507Triggerdagong.defaultAlias = "Q401507Triggerdagong"
local Q4015ClientConfig = require("Quest/Client/Q4015ClientConfig")

local this
local subIDs = Q4015ClientConfig.SubIDs
local npcs = Q4015ClientConfig.Npcs
local points = Q4015ClientConfig.Points
local datas = Q4015ClientConfig.Datas

function Q401507Triggerdagong:OnPostDataPrepare()
    print("[MainId: 4015][Trigger: Q401507Triggerdagong] OnPostDataPrepare")
    this = self
end

function Q401507Triggerdagong:OnPostComponentPrepare()
    print("[MainId: 4015][Trigger: Q401507Triggerdagong] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401507Triggerdagong:TriggerIn()
    print("[MainId: 4015][Trigger: Q401507Triggerdagong] TriggerIn")
    actorMgr:GetActor("4015"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("4015"):RequestInteraction(npcs.Npc5236Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401507Triggerdagong:PreTriggerIn()
    print("[MainId: 4015][Trigger: Q401507Triggerdagong] PreTriggerIn")
end

function Q401507Triggerdagong:LightUpTriggerIn()
    print("[MainId: 4015][Trigger: Q401507Triggerdagong] LightUpTriggerIn")
end

function Q401507Triggerdagong:TriggerOut()
    print("[MainId: 4015][Trigger: Q401507Triggerdagong] TriggerOut")
end

return Q401507Triggerdagong
