require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401105Trigger = class("Q401105Trigger", GadgetActorProxy)
Q401105Trigger.defaultAlias = "Q401105Trigger"
local Q4011ClientConfig = require("Quest/Client/Q4011ClientConfig")

local this
local subIDs = Q4011ClientConfig.SubIDs
local npcs = Q4011ClientConfig.Npcs
local points = Q4011ClientConfig.Points
local datas = Q4011ClientConfig.Datas

function Q401105Trigger:OnPostDataPrepare()
    print("[MainId: 4011][Trigger: Q401105Trigger] OnPostDataPrepare")
    this = self
end

function Q401105Trigger:OnPostComponentPrepare()
    print("[MainId: 4011][Trigger: Q401105Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401105Trigger:TriggerIn()
    print("[MainId: 4011][Trigger: Q401105Trigger] TriggerIn")
    actorMgr:GetActor("4011"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4011")
        actor:CreateQuestNpcById(401105, npcs.Npc1070Data.id, 0)
        actor:RequestInteraction(npcs.Npc1070Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401105Trigger:PreTriggerIn()
    print("[MainId: 4011][Trigger: Q401105Trigger] PreTriggerIn")
end

function Q401105Trigger:LightUpTriggerIn()
    print("[MainId: 4011][Trigger: Q401105Trigger] LightUpTriggerIn")
end

function Q401105Trigger:TriggerOut()
    print("[MainId: 4011][Trigger: Q401105Trigger] TriggerOut")
end

return Q401105Trigger
