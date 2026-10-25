require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74073Trigger_Reminder = class("Q74073Trigger_Reminder", GadgetActorProxy)
Q74073Trigger_Reminder.defaultAlias = "Q74073Trigger_Reminder"
local Q74073ClientConfig = require("Quest/Client/Q74073ClientConfig")

local this
local subIDs = Q74073ClientConfig.SubIDs
local npcs = Q74073ClientConfig.Npcs
local datas = Q74073ClientConfig.Datas

function Q74073Trigger_Reminder:OnPostDataPrepare()
    print("[MainId: 74073][Trigger: Q74073Trigger_Reminder] OnPostDataPrepare")
    this = self
end

function Q74073Trigger_Reminder:OnPostComponentPrepare()
    print("[MainId: 74073][Trigger: Q74073Trigger_Reminder] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 20, 40, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74073Trigger_Reminder:TriggerIn()
    print("[MainId: 74073][Trigger: Q74073Trigger_Reminder] TriggerIn")
    local actor = actorMgr:GetActor("74073")
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

function Q74073Trigger_Reminder:PreTriggerIn()
    print("[MainId: 74073][Trigger: Q74073Trigger_Reminder] PreTriggerIn")
end

function Q74073Trigger_Reminder:LightUpTriggerIn()
    print("[MainId: 74073][Trigger: Q74073Trigger_Reminder] LightUpTriggerIn")
end

function Q74073Trigger_Reminder:TriggerOut()
    print("[MainId: 74073][Trigger: Q74073Trigger_Reminder] TriggerOut")
end

return Q74073Trigger_Reminder
