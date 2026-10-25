require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401208Trigger = class("Q401208Trigger", GadgetActorProxy)
Q401208Trigger.defaultAlias = "Q401208Trigger"
local Q4012ClientConfig = require("Quest/Client/Q4012ClientConfig")

local this
local subIDs = Q4012ClientConfig.SubIDs
local npcs = Q4012ClientConfig.Npcs
local points = Q4012ClientConfig.Points
local datas = Q4012ClientConfig.Datas

function Q401208Trigger:OnPostDataPrepare()
    print("[MainId: 4012][Trigger: Q401208Trigger] OnPostDataPrepare")
    this = self
end

function Q401208Trigger:OnPostComponentPrepare()
    print("[MainId: 4012][Trigger: Q401208Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401208Trigger:TriggerIn()
    print("[MainId: 4012][Trigger: Q401208Trigger] TriggerIn")
    actorMgr:GetActor("4012"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4012")
        actor:CreateQuestNpcById(401208, npcs.Npc1078Data.id, 0)
        actor:RequestInteraction(npcs.Npc1078Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401208Trigger:PreTriggerIn()
    print("[MainId: 4012][Trigger: Q401208Trigger] PreTriggerIn")
end

function Q401208Trigger:LightUpTriggerIn()
    print("[MainId: 4012][Trigger: Q401208Trigger] LightUpTriggerIn")
end

function Q401208Trigger:TriggerOut()
    print("[MainId: 4012][Trigger: Q401208Trigger] TriggerOut")
end

return Q401208Trigger
