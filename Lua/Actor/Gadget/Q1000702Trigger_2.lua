require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000702Trigger_2 = class("Q1000702Trigger_2", GadgetActorProxy)
Q1000702Trigger_2.defaultAlias = "Q1000702Trigger_2"
local Q10007ClientConfig = require("Quest/Client/Q10007ClientConfig")

local this
local subIDs = Q10007ClientConfig.SubIDs
local datas = Q10007ClientConfig.Datas
local npcs = Q10007ClientConfig.Npcs
local points = Q10007ClientConfig.Points

function Q1000702Trigger_2:OnPostDataPrepare()
    print("Q1000702Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q1000702Trigger_2:OnPostComponentPrepare()
    print("Q1000702Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10007)
end

function Q1000702Trigger_2:TriggerIn()
    print("Q1000702Trigger_2 - TriggerIn")
    actorMgr:GetActor("10007"):QuestNarratorTask(datas.NarratorWithId_1000705, function(arg1)
        this:DestroySelf()
    end)
end

function Q1000702Trigger_2:PreTriggerIn()
    print("Q1000702Trigger_2 - PreTriggerIn")
end

function Q1000702Trigger_2:LightUpTriggerIn()
    print("Q1000702Trigger_2 - LightUpTriggerIn")
end

function Q1000702Trigger_2:TriggerOut()
    print("Q1000702Trigger_2 - TriggerOut")
end

return Q1000702Trigger_2
