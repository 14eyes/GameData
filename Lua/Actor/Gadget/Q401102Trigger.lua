require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401102Trigger = class("Q401102Trigger", GadgetActorProxy)
Q401102Trigger.defaultAlias = "Q401102Trigger"
local Q4011ClientConfig = require("Quest/Client/Q4011ClientConfig")

local this
local subIDs = Q4011ClientConfig.SubIDs
local npcs = Q4011ClientConfig.Npcs
local points = Q4011ClientConfig.Points
local datas = Q4011ClientConfig.Datas

function Q401102Trigger:OnPostDataPrepare()
    print("[MainId: 4011][Trigger: Q401102Trigger] OnPostDataPrepare")
    this = self
end

function Q401102Trigger:OnPostComponentPrepare()
    print("[MainId: 4011][Trigger: Q401102Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401102Trigger:TriggerIn()
    print("[MainId: 4011][Trigger: Q401102Trigger] TriggerIn")
    actorMgr:GetActor("4011"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4011")
        actor:CreateQuestNpcById(401102, npcs.Npc5005Data.id, 0)
        actor:RequestInteraction(npcs.Npc5005Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401102Trigger:PreTriggerIn()
    print("[MainId: 4011][Trigger: Q401102Trigger] PreTriggerIn")
end

function Q401102Trigger:LightUpTriggerIn()
    print("[MainId: 4011][Trigger: Q401102Trigger] LightUpTriggerIn")
end

function Q401102Trigger:TriggerOut()
    print("[MainId: 4011][Trigger: Q401102Trigger] TriggerOut")
end

return Q401102Trigger
