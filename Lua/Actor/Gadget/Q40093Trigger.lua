require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40093Trigger = class("Q40093Trigger", GadgetActorProxy)
Q40093Trigger.defaultAlias = "Q40093Trigger"
local Q40093ClientConfig = require("Quest/Client/Q40093ClientConfig")

local this
local subIDs = Q40093ClientConfig.SubIDs
local npcs = Q40093ClientConfig.Npcs
local datas = Q40093ClientConfig.Datas

function Q40093Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40093Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40093Trigger:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("40093"):NarratorOnlyTaskByData(datas.NarratorWithId2, function(arg1)
        actorMgr:GetActor("40093"):CreateQuestNpcWithTriggerBlack("40093041Trigger", 4009304, 13097, 0, 15, 1)
    end)
end

function Q40093Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40093Trigger
