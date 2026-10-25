require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905903ReminderTrigger = class("Q1905903ReminderTrigger", GadgetActorProxy)
Q1905903ReminderTrigger.defaultAlias = "Q1905903ReminderTrigger"
local Q19059ClientConfig = require("Quest/Client/Q19059ClientConfig")

local this
local subIDs = Q19059ClientConfig.SubIDs
local npcs = Q19059ClientConfig.Npcs
local datas = Q19059ClientConfig.Datas

function Q1905903ReminderTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1905903ReminderTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20.39386, 15.45434, 8.493941, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1905903ReminderTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19059")
    actor:EnablePlayerInputByQuest(false)
    actor:EnterSceneLookCamera({x = -1995.638, y = 202.455, z = 2593.775}, 1.2, 30, true, true)
    actor:NarratorOnlyTaskByData(datas.Narrator_1905903, function(arg1)
        actorMgr:GetActor("19059"):EnablePlayerInputByQuest(true)
        actorUtils.FinishQuestID(false, 1905903)
        this:DestroySelf()
    end, 19059)
end

function Q1905903ReminderTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1905903ReminderTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1905903ReminderTrigger:TriggerOut()
    print("TriggerOut")
end

return Q1905903ReminderTrigger
