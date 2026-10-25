require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8011Trigger6 = class("Q8011Trigger6", GadgetActorProxy)
Q8011Trigger6.defaultAlias = "Q8011Trigger6"
local Q8011ClientConfig = require("Quest/Client/Q8011ClientConfig")

local this
local subIDs = Q8011ClientConfig.SubIDs
local npcs = Q8011ClientConfig.Npcs
local datas = Q8011ClientConfig.Datas

function Q8011Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8011Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8011Trigger6:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8011"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("8011")
        actor:CreateQuestNpcById(801111, npcs.Npc13072Data.id, 0)
        actor:RequestInteraction(npcs.Npc13072Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q8011Trigger6:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8011Trigger6:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("8011"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q8011Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q8011Trigger6
