require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40089Trigger1 = class("Q40089Trigger1", GadgetActorProxy)
Q40089Trigger1.defaultAlias = "Q40089Trigger1"
local Q40089ClientConfig = require("Quest/Client/Q40089ClientConfig")

local this
local subIDs = Q40089ClientConfig.SubIDs
local npcs = Q40089ClientConfig.Npcs
local datas = Q40089ClientConfig.Datas

function Q40089Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40089Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(28, 30, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40089Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008903)
    this:DestroySelf()
end

function Q40089Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q40089Trigger1
