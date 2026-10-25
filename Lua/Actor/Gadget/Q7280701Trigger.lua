require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7280701Trigger = class("Q7280701Trigger", GadgetActorProxy)
Q7280701Trigger.defaultAlias = "Q7280701Trigger"
local Q72807ClientConfig = require("Quest/Client/Q72807ClientConfig")

local subIDs = Q72807ClientConfig.SubIDs
local npcs = Q72807ClientConfig.Npcs
local datas = Q72807ClientConfig.Datas

function Q7280701Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7280701Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7280701Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72807"):FinishQuestID(false, 7280701)
    self:DestroySelf()
end

function Q7280701Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7280701Trigger
