require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601103Trigger_1 = class("Q1601103Trigger_1", GadgetActorProxy)
Q1601103Trigger_1.defaultAlias = "Q1601103Trigger_1"
local Q16011ClientConfig = require("Quest/Client/Q16011ClientConfig")

local this
local subIDs = Q16011ClientConfig.SubIDs
local datas = Q16011ClientConfig.Datas
local npcs = Q16011ClientConfig.Npcs
local points = Q16011ClientConfig.Points

function Q1601103Trigger_1:OnPostDataPrepare()
    print("Q1601103Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1601103Trigger_1:OnPostComponentPrepare()
    print("Q1601103Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16011)
end

function Q1601103Trigger_1:TriggerIn()
    print("Q1601103Trigger_1 - TriggerIn")
    actorMgr:GetActor("16011"):QuestNarratorTask(datas.NarratorWithId_1601103, function(arg1)
        actorMgr:GetActor("16011"):QuestNarratorTask(datas.NarratorWithId_1601104, nil)
    end)

    this:DestroySelf()
end

function Q1601103Trigger_1:PreTriggerIn()
    print("Q1601103Trigger_1 - PreTriggerIn")
end

function Q1601103Trigger_1:LightUpTriggerIn()
    print("Q1601103Trigger_1 - LightUpTriggerIn")
end

function Q1601103Trigger_1:TriggerOut()
    print("Q1601103Trigger_1 - TriggerOut")
end

return Q1601103Trigger_1
