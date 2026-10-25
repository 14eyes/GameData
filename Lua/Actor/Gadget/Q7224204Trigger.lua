require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7224204Trigger = class("Q7224204Trigger", GadgetActorProxy)
Q7224204Trigger.defaultAlias = "Q7224204Trigger"
local Q72242ClientConfig = require("Quest/Client/Q72242ClientConfig")

local subIDs = Q72242ClientConfig.SubIDs
local npcs = Q72242ClientConfig.Npcs
local datas = Q72242ClientConfig.Datas

function Q7224204Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7224204Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(13.53691, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7224204Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72242"):FinishQuestID(false, 7224204)
    self:DestroySelf()
end

function Q7224204Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7224204Trigger
