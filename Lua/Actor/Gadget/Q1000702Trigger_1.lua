require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000702Trigger_1 = class("Q1000702Trigger_1", GadgetActorProxy)
Q1000702Trigger_1.defaultAlias = "Q1000702Trigger_1"
local Q10007ClientConfig = require("Quest/Client/Q10007ClientConfig")

local this
local subIDs = Q10007ClientConfig.SubIDs
local datas = Q10007ClientConfig.Datas
local npcs = Q10007ClientConfig.Npcs
local points = Q10007ClientConfig.Points

function Q1000702Trigger_1:OnPostDataPrepare()
    print("Q1000702Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1000702Trigger_1:OnPostComponentPrepare()
    print("Q1000702Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10007)
end

function Q1000702Trigger_1:TriggerIn()
    print("Q1000702Trigger_1 - TriggerIn")
    actorMgr:GetActor("10007"):QuestNarratorTask(datas.NarratorWithId_1000702, function(arg1)
        this:DestroySelf()
    end)
end

function Q1000702Trigger_1:PreTriggerIn()
    print("Q1000702Trigger_1 - PreTriggerIn")
end

function Q1000702Trigger_1:LightUpTriggerIn()
    print("Q1000702Trigger_1 - LightUpTriggerIn")
end

function Q1000702Trigger_1:TriggerOut()
    print("Q1000702Trigger_1 - TriggerOut")
end

return Q1000702Trigger_1
