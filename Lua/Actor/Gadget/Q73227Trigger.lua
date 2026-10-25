require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73227Trigger = class("Q73227Trigger", GadgetActorProxy)
Q73227Trigger.defaultAlias = "Q73227Trigger"
local Q73227ClientConfig = require("Quest/Client/Q73227ClientConfig")

local subIDs = Q73227ClientConfig.SubIDs
local npcs = Q73227ClientConfig.Npcs
local datas = Q73227ClientConfig.Datas

function Q73227Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73227Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18.25092, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73227Trigger:TriggerIn()
    print("TriggerIn")
    if actorUtils.IsLevelTagValid(39, true) then
        actorUtils.FinishQuestID(false, 7322701)
        self:DestroySelf()
    end
end

function Q73227Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73227Trigger
