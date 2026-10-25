require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000702Trigger_3 = class("Q1000702Trigger_3", GadgetActorProxy)
Q1000702Trigger_3.defaultAlias = "Q1000702Trigger_3"
local Q10007ClientConfig = require("Quest/Client/Q10007ClientConfig")

local this
local subIDs = Q10007ClientConfig.SubIDs
local datas = Q10007ClientConfig.Datas
local npcs = Q10007ClientConfig.Npcs
local points = Q10007ClientConfig.Points

function Q1000702Trigger_3:OnPostDataPrepare()
    print("Q1000702Trigger_3 - OnPostDataPrepare")
    this = self
end

function Q1000702Trigger_3:OnPostComponentPrepare()
    print("Q1000702Trigger_3 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10007)
end

function Q1000702Trigger_3:TriggerIn()
    print("Q1000702Trigger_3 - TriggerIn")
    actorMgr:GetActor("10007"):QuestNarratorTask(datas.NarratorWithId_1000708, function(arg1)
        this:DestroySelf()
    end)
end

function Q1000702Trigger_3:PreTriggerIn()
    print("Q1000702Trigger_3 - PreTriggerIn")
end

function Q1000702Trigger_3:LightUpTriggerIn()
    print("Q1000702Trigger_3 - LightUpTriggerIn")
end

function Q1000702Trigger_3:TriggerOut()
    print("Q1000702Trigger_3 - TriggerOut")
end

return Q1000702Trigger_3
