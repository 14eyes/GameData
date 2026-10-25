require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40092Trigger1 = class("Q40092Trigger1", GadgetActorProxy)
Q40092Trigger1.defaultAlias = "Q40092Trigger1"
local Q40092ClientConfig = require("Quest/Client/Q40092ClientConfig")

local this
local subIDs = Q40092ClientConfig.SubIDs
local npcs = Q40092ClientConfig.Npcs
local gadgets = Q40092ClientConfig.Gadgets
local datas = Q40092ClientConfig.Datas

function Q40092Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40092Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, function(arg1)
        actorUtils.FinishQuestID(false, 4009219)
    end, self.TriggerOut)
end

function Q40092Trigger1:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
end

function Q40092Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q40092Trigger1
