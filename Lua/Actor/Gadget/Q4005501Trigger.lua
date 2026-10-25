require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005501Trigger = class("Q4005501Trigger", GadgetActorProxy)
Q4005501Trigger.defaultAlias = "Q4005501Trigger"
local Q40055ClientConfig = require("Quest/Client/Q40055ClientConfig")

local subIDs = Q40055ClientConfig.SubIDs
local npcs = Q40055ClientConfig.Npcs
local datas = Q40055ClientConfig.Datas

function Q4005501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005501Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005501)
    self:DestroySelf()
end

function Q4005501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005501Trigger
