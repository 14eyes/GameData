require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503908Trigger_2 = class("Q1503908Trigger_2", GadgetActorProxy)
Q1503908Trigger_2.defaultAlias = "Q1503908Trigger_2"
local Q15039ClientConfig = require("Quest/Client/Q15039ClientConfig")

local this
local subIDs = Q15039ClientConfig.SubIDs
local datas = Q15039ClientConfig.Datas
local npcs = Q15039ClientConfig.Npcs
local points = Q15039ClientConfig.Points

function Q1503908Trigger_2:OnPostDataPrepare()
    print("Q1503908Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q1503908Trigger_2:OnPostComponentPrepare()
    print("Q1503908Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(44.43504, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15039)
end

function Q1503908Trigger_2:TriggerIn()
    print("Q1503908Trigger_2 - TriggerIn")
    actorMgr:GetActor("15039"):QuestNarratorTask(datas.NarratorWithId_1503904, function(arg1)
        actorMgr:GetActor("15039"):SetQuestVarByMainId(1, 1)
    end)

    this:DestroySelf()
end

function Q1503908Trigger_2:PreTriggerIn()
    print("Q1503908Trigger_2 - PreTriggerIn")
end

function Q1503908Trigger_2:LightUpTriggerIn()
    print("Q1503908Trigger_2 - LightUpTriggerIn")
end

function Q1503908Trigger_2:TriggerOut()
    print("Q1503908Trigger_2 - TriggerOut")
end

return Q1503908Trigger_2
