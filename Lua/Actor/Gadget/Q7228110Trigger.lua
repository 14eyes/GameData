require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7228110Trigger = class("Q7228110Trigger", GadgetActorProxy)
Q7228110Trigger.defaultAlias = "Q7228110Trigger"
local Q72281ClientConfig = require("Quest/Client/Q72281ClientConfig")

local subIDs = Q72281ClientConfig.SubIDs
local npcs = Q72281ClientConfig.Npcs
local datas = Q72281ClientConfig.Datas

function Q7228110Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7228110Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7228110Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7228110)
    self:DestroySelf()
end

function Q7228110Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7228110Trigger
