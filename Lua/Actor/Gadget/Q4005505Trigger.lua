require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005505Trigger = class("Q4005505Trigger", GadgetActorProxy)
Q4005505Trigger.defaultAlias = "Q4005505Trigger"
local Q40055ClientConfig = require("Quest/Client/Q40055ClientConfig")

local subIDs = Q40055ClientConfig.SubIDs
local npcs = Q40055ClientConfig.Npcs
local datas = Q40055ClientConfig.Datas

function Q4005505Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005505Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005505Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005505)
    self:DestroySelf()
end

function Q4005505Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005505Trigger
