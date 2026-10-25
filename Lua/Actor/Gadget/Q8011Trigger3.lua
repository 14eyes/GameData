require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8011Trigger3 = class("Q8011Trigger3", GadgetActorProxy)
Q8011Trigger3.defaultAlias = "Q8011Trigger3"
local Q8011ClientConfig = require("Quest/Client/Q8011ClientConfig")

local this
local subIDs = Q8011ClientConfig.SubIDs
local npcs = Q8011ClientConfig.Npcs
local datas = Q8011ClientConfig.Datas

function Q8011Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8011Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 40, 20, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8011Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8011"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("8011")
        actor:CreateQuestNpcById(801106, npcs.Npc13072Data.id, 0)
        actor:RequestInteraction(npcs.Npc13072Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q8011Trigger3:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8011Trigger3:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8011Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q8011Trigger3
