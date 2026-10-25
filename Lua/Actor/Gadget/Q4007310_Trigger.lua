require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007310_Trigger = class("Q4007310_Trigger", GadgetActorProxy)
Q4007310_Trigger.defaultAlias = "Q4007310_Trigger"
local Q40073ClientConfig = require("Quest/Client/Q40073ClientConfig")

local subIDs = Q40073ClientConfig.SubIDs
local npcs = Q40073ClientConfig.Npcs
local datas = Q40073ClientConfig.Datas

function Q4007310_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007310_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007310_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007310)
    self:DestroySelf()
end

function Q4007310_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007310_Trigger
