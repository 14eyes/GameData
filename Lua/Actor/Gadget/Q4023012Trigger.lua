require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023012Trigger = class("Q4023012Trigger", GadgetActorProxy)
Q4023012Trigger.defaultAlias = "Q4023012Trigger"
local Q40230ClientConfig = require("Quest/Client/Q40230ClientConfig")

local this
local subIDs = Q40230ClientConfig.SubIDs
local datas = Q40230ClientConfig.Datas
local npcs = Q40230ClientConfig.Npcs
local points = Q40230ClientConfig.Points

function Q4023012Trigger:OnPostDataPrepare()
    print("Q4023012Trigger - OnPostDataPrepare")
    this = self
end

function Q4023012Trigger:OnPostComponentPrepare()
    print("Q4023012Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40230)
end

function Q4023012Trigger:TriggerIn()
    print("Q4023012Trigger - TriggerIn")
    actorMgr:GetActor("40230"):QuestNarratorTask(datas.NarratorWithId_4023003, nil)
    actorMgr:GetActor("40230"):SetQuestVarByMainId(0, 1)
    this:DestroySelf()
end

function Q4023012Trigger:PreTriggerIn()
    print("Q4023012Trigger - PreTriggerIn")
end

function Q4023012Trigger:LightUpTriggerIn()
    print("Q4023012Trigger - LightUpTriggerIn")
end

function Q4023012Trigger:TriggerOut()
    print("Q4023012Trigger - TriggerOut")
end

return Q4023012Trigger
