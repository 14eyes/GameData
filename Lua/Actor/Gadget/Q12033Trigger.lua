require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12033Trigger = class("Q12033Trigger", GadgetActorProxy)
Q12033Trigger.defaultAlias = "Q12033Trigger"
local Q12033ClientConfig = require("Quest/Client/Q12033ClientConfig")

local subIDs = Q12033ClientConfig.SubIDs
local npcs = Q12033ClientConfig.Npcs
local datas = Q12033ClientConfig.Datas

function Q12033Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12033Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(22, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12033Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1203301)
    self:DestroySelf()
end

function Q12033Trigger:TriggerOut()
    print("TriggerOut")
end

return Q12033Trigger
