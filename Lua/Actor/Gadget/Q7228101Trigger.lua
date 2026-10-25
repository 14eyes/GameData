require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7228101Trigger = class("Q7228101Trigger", GadgetActorProxy)
Q7228101Trigger.defaultAlias = "Q7228101Trigger"
local Q72281ClientConfig = require("Quest/Client/Q72281ClientConfig")

local subIDs = Q72281ClientConfig.SubIDs
local npcs = Q72281ClientConfig.Npcs
local datas = Q72281ClientConfig.Datas

function Q7228101Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7228101Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7228101Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7228117)
    self:DestroySelf()
end

function Q7228101Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7228101Trigger
