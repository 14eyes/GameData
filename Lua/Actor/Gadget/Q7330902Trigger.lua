require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7330902Trigger = class("Q7330902Trigger", GadgetActorProxy)
Q7330902Trigger.defaultAlias = "Q7330902Trigger"
local Q73309ClientConfig = require("Quest/Client/Q73309ClientConfig")

local this
local subIDs = Q73309ClientConfig.SubIDs
local npcs = Q73309ClientConfig.Npcs
local points = Q73309ClientConfig.Points
local datas = Q73309ClientConfig.Datas

function Q7330902Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7330902Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7330902Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7330902)
    this:DestroySelf()
end

function Q7330902Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7330902Trigger
