require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19014Trigger_linshi = class("Q19014Trigger_linshi", GadgetActorProxy)
Q19014Trigger_linshi.defaultAlias = "Q19014Trigger_linshi"
local Q19014ClientConfig = require("Quest/Client/Q19014ClientConfig")

local subIDs = Q19014ClientConfig.SubIDs
local npcs = Q19014ClientConfig.Npcs
local datas = Q19014ClientConfig.Datas

function Q19014Trigger_linshi:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19014Trigger_linshi:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19014Trigger_linshi:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19014"):FinishQuestID(false, 1901406)
    self:DestroySelf()
end

function Q19014Trigger_linshi:TriggerOut()
    print("TriggerOut")
end

return Q19014Trigger_linshi
