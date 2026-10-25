require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401101Trigger = class("Q401101Trigger", GadgetActorProxy)
Q401101Trigger.defaultAlias = "Q401101Trigger"
local Q4011ClientConfig = require("Quest/Client/Q4011ClientConfig")

local this
local subIDs = Q4011ClientConfig.SubIDs
local npcs = Q4011ClientConfig.Npcs
local points = Q4011ClientConfig.Points
local datas = Q4011ClientConfig.Datas

function Q401101Trigger:OnPostDataPrepare()
    print("[MainId: 4011][Trigger: Q401101Trigger] OnPostDataPrepare")
    this = self
end

function Q401101Trigger:OnPostComponentPrepare()
    print("[MainId: 4011][Trigger: Q401101Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401101Trigger:TriggerIn()
    print("[MainId: 4011][Trigger: Q401101Trigger] TriggerIn")
end

function Q401101Trigger:PreTriggerIn()
    print("[MainId: 4011][Trigger: Q401101Trigger] PreTriggerIn")
    actorMgr:GetActor("4011"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4011")
        actor:CreateQuestNpcById(401101, npcs.Npc13554Data.id, 0)
        actor:RequestInteraction(npcs.Npc13554Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401101Trigger:LightUpTriggerIn()
    print("[MainId: 4011][Trigger: Q401101Trigger] LightUpTriggerIn")
end

function Q401101Trigger:TriggerOut()
    print("[MainId: 4011][Trigger: Q401101Trigger] TriggerOut")
end

return Q401101Trigger
