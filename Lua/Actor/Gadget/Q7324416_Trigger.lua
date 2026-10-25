require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7324416_Trigger = class("Q7324416_Trigger", GadgetActorProxy)
Q7324416_Trigger.defaultAlias = "Q7324416_Trigger"
local Q73244ClientConfig = require("Quest/Client/Q73244ClientConfig")

local subIDs = Q73244ClientConfig.SubIDs
local npcs = Q73244ClientConfig.Npcs
local datas = Q73244ClientConfig.Datas

function Q7324416_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7324416_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7324416_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7324416)
    self:DestroySelf()
end

function Q7324416_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7324416_Trigger
