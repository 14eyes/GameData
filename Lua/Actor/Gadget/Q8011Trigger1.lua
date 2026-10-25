require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8011Trigger1 = class("Q8011Trigger1", GadgetActorProxy)
Q8011Trigger1.defaultAlias = "Q8011Trigger1"
local Q8011ClientConfig = require("Quest/Client/Q8011ClientConfig")

local this
local subIDs = Q8011ClientConfig.SubIDs
local npcs = Q8011ClientConfig.Npcs
local datas = Q8011ClientConfig.Datas

function Q8011Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8011Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q8011Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 801113)
    this:DestroySelf()
end

function Q8011Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q8011Trigger1
