require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005503Trigger = class("Q4005503Trigger", GadgetActorProxy)
Q4005503Trigger.defaultAlias = "Q4005503Trigger"
local Q40055ClientConfig = require("Quest/Client/Q40055ClientConfig")

local subIDs = Q40055ClientConfig.SubIDs
local npcs = Q40055ClientConfig.Npcs
local datas = Q40055ClientConfig.Datas

function Q4005503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005503Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005503)
    self:DestroySelf()
end

function Q4005503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005503Trigger
