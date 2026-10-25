require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19012Trigger_linshi = class("Q19012Trigger_linshi", GadgetActorProxy)
Q19012Trigger_linshi.defaultAlias = "Q19012Trigger_linshi"
local Q19012ClientConfig = require("Quest/Client/Q19012ClientConfig")

local subIDs = Q19012ClientConfig.SubIDs
local npcs = Q19012ClientConfig.Npcs
local gadgets = Q19012ClientConfig.Gadgets
local datas = Q19012ClientConfig.Datas

function Q19012Trigger_linshi:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19012Trigger_linshi:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19012Trigger_linshi:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19012"):FinishQuestID(false, 1901203)
    self:DestroySelf()
end

function Q19012Trigger_linshi:TriggerOut()
    print("TriggerOut")
end

return Q19012Trigger_linshi
