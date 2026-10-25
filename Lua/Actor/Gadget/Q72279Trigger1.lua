require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72279Trigger1 = class("Q72279Trigger1", GadgetActorProxy)
Q72279Trigger1.defaultAlias = "Q72279Trigger1"
local Q72279ClientConfig = require("Quest/Client/Q72279ClientConfig")

local subIDs = Q72279ClientConfig.SubIDs
local npcs = Q72279ClientConfig.Npcs
local datas = Q72279ClientConfig.Datas

function Q72279Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72279Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72279Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7227909)
    self:DestroySelf()
end

function Q72279Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q72279Trigger1
