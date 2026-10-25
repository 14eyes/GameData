require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401201Trigger = class("Q401201Trigger", GadgetActorProxy)
Q401201Trigger.defaultAlias = "Q401201Trigger"
local Q4012ClientConfig = require("Quest/Client/Q4012ClientConfig")

local this
local subIDs = Q4012ClientConfig.SubIDs
local npcs = Q4012ClientConfig.Npcs
local points = Q4012ClientConfig.Points
local datas = Q4012ClientConfig.Datas

function Q401201Trigger:OnPostDataPrepare()
    print("[MainId: 4012][Trigger: Q401201Trigger] OnPostDataPrepare")
    this = self
end

function Q401201Trigger:OnPostComponentPrepare()
    print("[MainId: 4012][Trigger: Q401201Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(27, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401201Trigger:TriggerIn()
    print("[MainId: 4012][Trigger: Q401201Trigger] TriggerIn")
    actorMgr:GetActor("4012"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("4012"):RequestInteraction(npcs.Npc13462Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401201Trigger:PreTriggerIn()
    print("[MainId: 4012][Trigger: Q401201Trigger] PreTriggerIn")
end

function Q401201Trigger:LightUpTriggerIn()
    print("[MainId: 4012][Trigger: Q401201Trigger] LightUpTriggerIn")
end

function Q401201Trigger:TriggerOut()
    print("[MainId: 4012][Trigger: Q401201Trigger] TriggerOut")
end

return Q401201Trigger
