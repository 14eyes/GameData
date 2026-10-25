require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325625Trigger = class("Q7325625Trigger", GadgetActorProxy)
Q7325625Trigger.defaultAlias = "Q7325625Trigger"
local Q73256ClientConfig = require("Quest/Client/Q73256ClientConfig")

local this
local subIDs = Q73256ClientConfig.SubIDs
local npcs = Q73256ClientConfig.Npcs
local points = Q73256ClientConfig.Points
local datas = Q73256ClientConfig.Datas

function Q7325625Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325625Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(28, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7325625Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325625)
    this:DestroySelf()
    actorMgr:GetActor("73256"):NarratorOnlyTaskByData(datas.NarratorWithId25, function(arg1)
        local actor = actorMgr:GetActor("73256")
        actor:EnterSceneLookCamera({x = 870.118, y = 110.86, z = 6465.442}, 0, 3, true, true)
        actor:NarratorOnlyTaskByData(datas.NarratorWithId26)
    end)
end

function Q7325625Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7325625Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7325625Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325625Trigger
