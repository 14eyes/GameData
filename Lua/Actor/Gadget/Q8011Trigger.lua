require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8011Trigger = class("Q8011Trigger", GadgetActorProxy)
Q8011Trigger.defaultAlias = "Q8011Trigger"
local Q8011ClientConfig = require("Quest/Client/Q8011ClientConfig")

local this
local subIDs = Q8011ClientConfig.SubIDs
local npcs = Q8011ClientConfig.Npcs
local datas = Q8011ClientConfig.Datas

function Q8011Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8011Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q8011Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8011"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("8011")
        actor:CreateQuestNpcById(801101, npcs.Npc13072Data.id, 0)
        actor:RequestInteraction(npcs.Npc13072Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q8011Trigger:TriggerOut()
    print("TriggerOut")
end

return Q8011Trigger
