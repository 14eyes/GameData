require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74075Trigger_Reminder = class("Q74075Trigger_Reminder", GadgetActorProxy)
Q74075Trigger_Reminder.defaultAlias = "Q74075Trigger_Reminder"
local Q74075ClientConfig = require("Quest/Client/Q74075ClientConfig")

local this
local subIDs = Q74075ClientConfig.SubIDs
local npcs = Q74075ClientConfig.Npcs
local points = Q74075ClientConfig.Points
local datas = Q74075ClientConfig.Datas

function Q74075Trigger_Reminder:OnPostDataPrepare()
    print("[MainId: 74075][Trigger: Q74075Trigger_Reminder] OnPostDataPrepare")
    this = self
end

function Q74075Trigger_Reminder:OnPostComponentPrepare()
    print("[MainId: 74075][Trigger: Q74075Trigger_Reminder] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 30, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74075Trigger_Reminder:TriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Reminder] TriggerIn")
    local actor = actorMgr:GetActor("74075")
    if actor:GetQuestGlobalVar(7407201) == 0 then
        actor:NarratorOnlyTaskByData(datas.NarratorWithId1)
        this:DestroySelf()
    else
        if actor:GetQuestGlobalVar(7407201) == 1 then
            actor:NarratorOnlyTaskByData(datas.NarratorWithId2)
            this:DestroySelf()
        else
            if actor:GetQuestGlobalVar(7407201) == 2 then
                actor:NarratorOnlyTaskByData(datas.NarratorWithId3)
                this:DestroySelf()
            end
        end
    end
end

function Q74075Trigger_Reminder:PreTriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Reminder] PreTriggerIn")
end

function Q74075Trigger_Reminder:LightUpTriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Reminder] LightUpTriggerIn")
end

function Q74075Trigger_Reminder:TriggerOut()
    print("[MainId: 74075][Trigger: Q74075Trigger_Reminder] TriggerOut")
end

return Q74075Trigger_Reminder
