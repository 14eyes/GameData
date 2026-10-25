require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74074Trigger_Reminder = class("Q74074Trigger_Reminder", GadgetActorProxy)
Q74074Trigger_Reminder.defaultAlias = "Q74074Trigger_Reminder"
local Q74074ClientConfig = require("Quest/Client/Q74074ClientConfig")

local this
local subIDs = Q74074ClientConfig.SubIDs
local npcs = Q74074ClientConfig.Npcs
local points = Q74074ClientConfig.Points
local datas = Q74074ClientConfig.Datas

function Q74074Trigger_Reminder:OnPostDataPrepare()
    print("[MainId: 74074][Trigger: Q74074Trigger_Reminder] OnPostDataPrepare")
    this = self
end

function Q74074Trigger_Reminder:OnPostComponentPrepare()
    print("[MainId: 74074][Trigger: Q74074Trigger_Reminder] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 10, 25, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74074Trigger_Reminder:TriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Reminder] TriggerIn")
    local actor = actorMgr:GetActor("74074")
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

function Q74074Trigger_Reminder:PreTriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Reminder] PreTriggerIn")
end

function Q74074Trigger_Reminder:LightUpTriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Reminder] LightUpTriggerIn")
end

function Q74074Trigger_Reminder:TriggerOut()
    print("[MainId: 74074][Trigger: Q74074Trigger_Reminder] TriggerOut")
end

return Q74074Trigger_Reminder
