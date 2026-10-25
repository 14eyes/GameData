require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023015Trigger = class("Q4023015Trigger", GadgetActorProxy)
Q4023015Trigger.defaultAlias = "Q4023015Trigger"
local Q40230ClientConfig = require("Quest/Client/Q40230ClientConfig")

local this
local subIDs = Q40230ClientConfig.SubIDs
local datas = Q40230ClientConfig.Datas
local npcs = Q40230ClientConfig.Npcs
local points = Q40230ClientConfig.Points

function Q4023015Trigger:OnPostDataPrepare()
    print("Q4023015Trigger - OnPostDataPrepare")
    this = self
end

function Q4023015Trigger:OnPostComponentPrepare()
    print("Q4023015Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40230)
end

function Q4023015Trigger:TriggerIn()
    print("Q4023015Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4023015)
    actorMgr:GetActor("40230"):QuestNarratorTask(datas.NarratorWithId_4023005, nil)
    this:DestroySelf()
end

function Q4023015Trigger:PreTriggerIn()
    print("Q4023015Trigger - PreTriggerIn")
end

function Q4023015Trigger:LightUpTriggerIn()
    print("Q4023015Trigger - LightUpTriggerIn")
end

function Q4023015Trigger:TriggerOut()
    print("Q4023015Trigger - TriggerOut")
end

return Q4023015Trigger
