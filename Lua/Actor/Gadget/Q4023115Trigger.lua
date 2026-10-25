require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023115Trigger = class("Q4023115Trigger", GadgetActorProxy)
Q4023115Trigger.defaultAlias = "Q4023115Trigger"
local Q40231ClientConfig = require("Quest/Client/Q40231ClientConfig")

local this
local subIDs = Q40231ClientConfig.SubIDs
local datas = Q40231ClientConfig.Datas
local npcs = Q40231ClientConfig.Npcs
local points = Q40231ClientConfig.Points

function Q4023115Trigger:OnPostDataPrepare()
    print("Q4023115Trigger - OnPostDataPrepare")
    this = self
end

function Q4023115Trigger:OnPostComponentPrepare()
    print("Q4023115Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40231)
end

function Q4023115Trigger:TriggerIn()
    print("Q4023115Trigger - TriggerIn")
    actorMgr:GetActor("40231"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("40231"):QuestNarratorTask(datas.NarratorWithId_4023104, nil)
    end)

    actorMgr:GetActor("40231"):SetQuestVarByMainId(0, 1)
    this:DestroySelf()
end

function Q4023115Trigger:PreTriggerIn()
    print("Q4023115Trigger - PreTriggerIn")
end

function Q4023115Trigger:LightUpTriggerIn()
    print("Q4023115Trigger - LightUpTriggerIn")
end

function Q4023115Trigger:TriggerOut()
    print("Q4023115Trigger - TriggerOut")
end

return Q4023115Trigger
