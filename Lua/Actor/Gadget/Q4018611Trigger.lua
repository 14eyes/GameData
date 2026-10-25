require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018611Trigger = class("Q4018611Trigger", GadgetActorProxy)
Q4018611Trigger.defaultAlias = "Q4018611Trigger"
local Q40186ClientConfig = require("Quest/Client/Q40186ClientConfig")

local this
local subIDs = Q40186ClientConfig.SubIDs
local datas = Q40186ClientConfig.Datas
local npcs = Q40186ClientConfig.Npcs
local points = Q40186ClientConfig.Points

function Q4018611Trigger:OnPostDataPrepare()
    print("Q4018611Trigger - OnPostDataPrepare")
    this = self
end

function Q4018611Trigger:OnPostComponentPrepare()
    print("Q4018611Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40186)
end

function Q4018611Trigger:TriggerIn()
    print("Q4018611Trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("40186"):QuestNarratorTask(datas.NarratorWithId_4018608, function(arg1)
        actorUtils.FinishQuestID(false, 4018611)
    end)
end

function Q4018611Trigger:PreTriggerIn()
    print("Q4018611Trigger - PreTriggerIn")
end

function Q4018611Trigger:LightUpTriggerIn()
    print("Q4018611Trigger - LightUpTriggerIn")
end

function Q4018611Trigger:TriggerOut()
    print("Q4018611Trigger - TriggerOut")
end

return Q4018611Trigger
