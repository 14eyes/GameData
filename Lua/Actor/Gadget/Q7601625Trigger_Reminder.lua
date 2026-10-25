require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601625Trigger_Reminder = class("Q7601625Trigger_Reminder", GadgetActorProxy)
Q7601625Trigger_Reminder.defaultAlias = "Q7601625Trigger_Reminder"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601625Trigger_Reminder:OnPostDataPrepare()
    print("Q7601625Trigger_Reminder - OnPostDataPrepare")
    this = self
end

function Q7601625Trigger_Reminder:OnPostComponentPrepare()
    print("Q7601625Trigger_Reminder - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601625Trigger_Reminder:TriggerIn()
    print("Q7601625Trigger_Reminder - TriggerIn")
    actorMgr:GetActor("76016"):QuestNarratorTask(datas.NarratorWithId_7601625, nil)
    this:DestroySelf()
end

function Q7601625Trigger_Reminder:PreTriggerIn()
    print("Q7601625Trigger_Reminder - PreTriggerIn")
end

function Q7601625Trigger_Reminder:LightUpTriggerIn()
    print("Q7601625Trigger_Reminder - LightUpTriggerIn")
end

function Q7601625Trigger_Reminder:TriggerOut()
    print("Q7601625Trigger_Reminder - TriggerOut")
end

return Q7601625Trigger_Reminder
