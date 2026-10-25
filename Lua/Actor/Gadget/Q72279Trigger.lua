require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72279Trigger = class("Q72279Trigger", GadgetActorProxy)
Q72279Trigger.defaultAlias = "Q72279Trigger"
local Q72279ClientConfig = require("Quest/Client/Q72279ClientConfig")

local subIDs = Q72279ClientConfig.SubIDs
local npcs = Q72279ClientConfig.Npcs
local datas = Q72279ClientConfig.Datas

function Q72279Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72279Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72279Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7227902)
    self:DestroySelf()
end

function Q72279Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72279Trigger
