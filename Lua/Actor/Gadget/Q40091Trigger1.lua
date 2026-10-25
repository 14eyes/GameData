require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40091Trigger1 = class("Q40091Trigger1", GadgetActorProxy)
Q40091Trigger1.defaultAlias = "Q40091Trigger1"
local Q40091ClientConfig = require("Quest/Client/Q40091ClientConfig")

local this
local subIDs = Q40091ClientConfig.SubIDs
local npcs = Q40091ClientConfig.Npcs
local datas = Q40091ClientConfig.Datas

function Q40091Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40091Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40091Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4009101)
    this:DestroySelf()
end

function Q40091Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q40091Trigger1
