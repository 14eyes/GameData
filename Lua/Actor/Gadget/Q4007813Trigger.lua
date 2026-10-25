require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007813Trigger = class("Q4007813Trigger", GadgetActorProxy)
Q4007813Trigger.defaultAlias = "Q4007813Trigger"
local Q40078ClientConfig = require("Quest/Client/Q40078ClientConfig")

local subIDs = Q40078ClientConfig.SubIDs
local npcs = Q40078ClientConfig.Npcs
local gadgets = Q40078ClientConfig.Gadgets
local datas = Q40078ClientConfig.Datas

function Q4007813Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007813Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007813Trigger:TriggerIn()
    print("TriggerIn")
end

function Q4007813Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("40078"):SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:DestroySelf()
end

return Q4007813Trigger
