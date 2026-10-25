require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7228112Trigger = class("Q7228112Trigger", GadgetActorProxy)
Q7228112Trigger.defaultAlias = "Q7228112Trigger"
local Q72281ClientConfig = require("Quest/Client/Q72281ClientConfig")

local subIDs = Q72281ClientConfig.SubIDs
local npcs = Q72281ClientConfig.Npcs
local datas = Q72281ClientConfig.Datas

function Q7228112Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7228112Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7228112Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7228112)
    self:DestroySelf()
end

function Q7228112Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7228112Trigger
