require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601606Trigger_reminder = class("Q7601606Trigger_reminder", GadgetActorProxy)
Q7601606Trigger_reminder.defaultAlias = "Q7601606Trigger_reminder"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601606Trigger_reminder:OnPostDataPrepare()
    print("Q7601606Trigger_reminder - OnPostDataPrepare")
    this = self
end

function Q7601606Trigger_reminder:OnPostComponentPrepare()
    print("Q7601606Trigger_reminder - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 38, 16, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601606Trigger_reminder:TriggerIn()
    print("Q7601606Trigger_reminder - TriggerIn")
    actorMgr:GetActor("76016"):QuestNarratorTask(datas.NarratorWithId_7601606, nil)
    this:DestroySelf()
end

function Q7601606Trigger_reminder:PreTriggerIn()
    print("Q7601606Trigger_reminder - PreTriggerIn")
end

function Q7601606Trigger_reminder:LightUpTriggerIn()
    print("Q7601606Trigger_reminder - LightUpTriggerIn")
end

function Q7601606Trigger_reminder:TriggerOut()
    print("Q7601606Trigger_reminder - TriggerOut")
end

return Q7601606Trigger_reminder
