require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023115Trigger_1 = class("Q4023115Trigger_1", GadgetActorProxy)
Q4023115Trigger_1.defaultAlias = "Q4023115Trigger_1"
local Q40231ClientConfig = require("Quest/Client/Q40231ClientConfig")

local this
local subIDs = Q40231ClientConfig.SubIDs
local datas = Q40231ClientConfig.Datas
local npcs = Q40231ClientConfig.Npcs
local points = Q40231ClientConfig.Points

function Q4023115Trigger_1:OnPostDataPrepare()
    print("Q4023115Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q4023115Trigger_1:OnPostComponentPrepare()
    print("Q4023115Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40231)
end

function Q4023115Trigger_1:TriggerIn()
    print("Q4023115Trigger_1 - TriggerIn")
    actorMgr:GetActor("40231"):QuestNarratorTask(datas.NarratorWithId_4023106, nil)
    actorMgr:GetActor("40231"):SetQuestVarByMainId(2, 1)
    this:DestroySelf()
end

function Q4023115Trigger_1:PreTriggerIn()
    print("Q4023115Trigger_1 - PreTriggerIn")
end

function Q4023115Trigger_1:LightUpTriggerIn()
    print("Q4023115Trigger_1 - LightUpTriggerIn")
end

function Q4023115Trigger_1:TriggerOut()
    print("Q4023115Trigger_1 - TriggerOut")
end

return Q4023115Trigger_1
