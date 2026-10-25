require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40089Trigger = class("Q40089Trigger", GadgetActorProxy)
Q40089Trigger.defaultAlias = "Q40089Trigger"
local Q40089ClientConfig = require("Quest/Client/Q40089ClientConfig")

local this
local subIDs = Q40089ClientConfig.SubIDs
local npcs = Q40089ClientConfig.Npcs
local datas = Q40089ClientConfig.Datas

function Q40089Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40089Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 50, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40089Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008901)
    this:DestroySelf()
end

function Q40089Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40089Trigger
